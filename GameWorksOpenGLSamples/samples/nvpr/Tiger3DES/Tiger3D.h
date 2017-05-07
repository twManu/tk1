//----------------------------------------------------------------------------------
// File:        nvpr/Tiger3DES/Tiger3D.h
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
#ifndef Tiger3D_H
#define Tiger3D_H

#include "NvAppBase/NvSampleApp.h"

class NvStopWatch;
class NvFramerateCounter;

class Tiger3D : public NvSampleApp
{
private:
    bool es_context;
    GLuint program;
    void initProgram();
public:
    Tiger3D(NvPlatformContext* platform);
    ~Tiger3D();
    
    void initUI();
    NvUIEventResponse handleReaction(const NvUIReaction &react);
    void initRendering();
    void shutdownRendering();
    void drawTigerProxyTexture(uint32_t item);
    void animate();
    void draw();
    void reshape(int32_t width, int32_t height);

    bool down(NvPointerEvent* p);
    bool up(NvPointerEvent* p);
    bool motion(NvPointerEvent* p);

    bool handlePointerInput(NvInputDeviceType::Enum device,
                        NvPointerActionType::Enum action, 
                        uint32_t modifiers,
                        int32_t count,
                        NvPointerEvent* points,
                        int64_t timestamp);

    void configurationCallback(NvEGLConfiguration& config);

protected:
    bool mAnimate;
};

#endif
