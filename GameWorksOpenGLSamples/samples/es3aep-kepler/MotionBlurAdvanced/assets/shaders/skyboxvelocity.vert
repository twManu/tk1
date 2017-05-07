//----------------------------------------------------------------------------------
// File:        es3aep-kepler/MotionBlurAdvanced/assets/shaders/skyboxvelocity.vert
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
#version 300 es

precision mediump float;

// INPUT
layout(location = 0) in vec4 a_vPosition; // In BaseShader

// OUTPUT
out vec4 v_vCurrentCubemapCoord;
out vec4 v_vPreviousCubemapCoord;

// UNIFORMS
uniform mat4 u_mProjectionMat;          // In BaseProjectionShader
uniform mat4 u_mCurrentInverseViewMat;  // In SkyboxVelocityShader
uniform mat4 u_mPreviousInverseViewMat; // In SkyboxVelocityShader

void main()
{
    gl_Position = a_vPosition;

    // Force all depths to just inside the far clip plane. If we put z=0.9999
    // in the vertex attributes, it messes up the cube projection below.
    // Nobbling it here is easier.
    gl_Position.z = 0.9999;

    vec4 vPos = u_mProjectionMat * a_vPosition;
    vPos /= vPos.w;

    v_vCurrentCubemapCoord  = u_mCurrentInverseViewMat  * vPos;
    v_vPreviousCubemapCoord = u_mPreviousInverseViewMat * vPos;
}
