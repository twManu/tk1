//----------------------------------------------------------------------------------
// File:        nvpr/TextWheelES/TextWheel.h
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
#ifndef TextWheel_H
#define TextWheel_H

#include <vector>

#include "NvAppBase/NvSampleApp.h"

class NvStopWatch;
class NvFramerateCounter;

#include <Cg/double.hpp>
#include <Cg/vector/xyzw.hpp>
#include <Cg/matrix/1based.hpp>
#include <Cg/matrix/rows.hpp>
#include <Cg/vector.hpp>
#include <Cg/matrix.hpp>

#include "render_font.hpp"

using namespace Cg;

class TextWheel : public NvSampleApp
{
private:
    bool es_context;
    static const int emScale = 2048;
    std::vector<Message*> msg_list;

    bool stroking;
    bool filling;
    // Should be the opposite of stroking and filling.
    bool stroking_state;
    bool filling_state;

    float window_width, window_height, aspect_ratio;
    float3x3 win2obj;

    bool dragging;
    bool pinching;

    int underline;
    int use_sRGB;
    bool hasFramebufferSRGB;
    GLint sRGB_capable;
    float angle;
    bool animating;

    int background;

    float3x3 model, view;

    float2 last_t1, last_t2, last_t;
    float3 last_t_obj;

    TextWheel& operator = (const TextWheel &rhs) { assert(!"no assignment"); return *this; }

public:
    TextWheel(NvPlatformContext* platform);
    ~TextWheel();
    
    void initUI();
    void initRendering();
    void draw();
    void reshape(int32_t width, int32_t height);

    bool down(NvPointerEvent* p);
    bool up(NvPointerEvent* p);
    bool motion(NvPointerEvent* p);

    bool pinchAndZoom(float2 touch1_pt1, float2 touch2_pt1, float2 touch1_pt2, float2 touch2_pt2);

    bool handlePointerInput(NvInputDeviceType::Enum device,
                        NvPointerActionType::Enum action, 
                        uint32_t modifiers,
                        int32_t count,
                        NvPointerEvent* points,
                        int64_t timestamp);

    void configurationCallback(NvEGLConfiguration& config);

    void setBackground();
    void initGraphics(int emScale);
    void initViewMatrix();
    void configureProjection();
    void display();
    void idle();

protected:
    bool mAnimate;
};

#endif
