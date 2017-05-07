//----------------------------------------------------------------------------------
// File:        es3aep-kepler/ComputeWaterSimulation/assets/shaders/WaterGradientsPass.glsl
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
#version 430
#extension GL_ARB_compute_shader : enable
#extension GL_ARB_shader_storage_buffer_object : enable

#UNIFORMS

uniform uint GridSize;


layout(std430, binding=1) buffer InHeight {
    float inHeight[];
};

layout(std430, binding=2) buffer Gradients {
    vec2 gradients[];
};

layout(std430, binding=3) buffer OutHeight {
    float outHeight[];
};


layout(local_size_x = WORK_GROUP_SIZE,  local_size_y = WORK_GROUP_SIZE, local_size_z = 1) in;


uint GetOffset(uint i, uint j)
{
	return i * GridSize + j;
}

float GetHeight(uint i, uint j)
{
	//i = clamp(i, 0, GridSize);
	//j = clamp(j, 0, GridSize);
	return inHeight[GetOffset(i, j)];
}

void main()
{
	uint i = gl_GlobalInvocationID.x;
	uint j = gl_GlobalInvocationID.y;
	uint idx = GetOffset(i, j);

	if (i < 1 || i > GridSize - 1) return;
	if (j < 1 || j > GridSize - 1) return; 

	float h0 = GetHeight(i, j + 1);
	float h1 = GetHeight(i, j - 1);
	float h2 = GetHeight(i + 1, j);
	float h3 = GetHeight(i - 1, j);

	gradients[idx] = vec2(h0 - h1, h2 - h3);
	outHeight[idx] = inHeight[idx];
}
