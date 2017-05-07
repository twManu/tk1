//----------------------------------------------------------------------------------
// File:        es2-aurora/MotionBlur/assets/shaders/motionblur.frag
// SDK Version: v2.1 
// Email:       gameworks@nvidia.com
// Site:        http://developer.nvidia.com/
//
// Copyright (c) 2014, NVIDIA CORPORATION. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
//  * Redistributions of source code must retain the above copyright
//    notice, this list of conditions and the following disclaimer.
//  * Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the
//    documentation and/or other materials provided with the distribution.
//  * Neither the name of NVIDIA CORPORATION nor the names of its
//    contributors may be used to endorse or promote products derived
//    from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ``AS IS'' AND ANY
// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
// CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
// PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
// OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//----------------------------------------------------------------------------------
precision mediump float;

// INPUT
varying vec4 v_vCorrectedPosScreenSpace;
varying vec4 v_vCurrentPosScreenSpace;
varying vec4 v_vPreviousPosScreenSpace;

// UNIFORMS
uniform sampler2D u_tColorTex; // In MotionBlurShader

// CONSTANTS
const int NUM_SAMPLES = 16;
const vec3 VZERO = vec3(0.0, 0.0, 0.0);

//#define VISUALIZE_VELOCITY

void main()
{
    vec2 vWindowPosition = v_vCorrectedPosScreenSpace.xy /
                           v_vCorrectedPosScreenSpace.w;
    vWindowPosition *= 0.5;
    vWindowPosition += 0.5;

    vec3 vScreenSpaceVelocity =
        ((v_vCurrentPosScreenSpace.xyz/v_vCurrentPosScreenSpace.w) -
         (v_vPreviousPosScreenSpace.xyz/v_vPreviousPosScreenSpace.w)) * 0.5;

#ifdef VISUALIZE_VELOCITY
    // 0.5 is used to scale the screen space velocity of the pixel from [-1,1]
    // to [0,1]
    gl_FragColor = vec4(vScreenSpaceVelocity.x,
                        vScreenSpaceVelocity.y,
                        vScreenSpaceVelocity.z,
                        1.0);
#else
    float fWeight = 0.0;
    vec3 vSum = VZERO;
    float fNumSamples = float(NUM_SAMPLES);

    for(int k = 0; k < NUM_SAMPLES; ++k) 
    {
        float fOffset = float(k) / (fNumSamples - 1.0);
        vec4 vSample = texture2D(u_tColorTex,
            vWindowPosition + (vScreenSpaceVelocity.xy * fOffset));

        // The unblurred geometry is rendered with alpha=1 and the background
        // with alpha=0.  So samples that hit the geometry have alpha=1. For
        // accumulation and blur purposes, ignore samples that hit the
        // background.
        vSum += (vSample.rgb * vSample.a);
        fWeight += vSample.a;
    }

    if (fWeight > 0.0)
        vSum /= fWeight;

    float fAlpha = fWeight / fNumSamples;

    gl_FragColor = vec4(vSum, fAlpha);
#endif
}
