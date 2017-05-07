//----------------------------------------------------------------------------------
// File:        es3aep-kepler/SoftShadows/PodiumModel.cpp
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
#include "SoftShadowsCommon.h"
#include "PodiumModel.h"

const uint32_t PodiumModel::numVertices = 106;

const uint32_t PodiumModel::numIndices = 276;

const ModelVertex PodiumModel::vertices[106] =
{
    { { -8.075600e-002f, -1.110510e-001f, -4.232570e-001f }, { 0.000000e+000f, 0.000000e+000f, -1.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.192440e-001f, -1.310510e-001f, -4.232570e-001f }, { 0.000000e+000f, 0.000000e+000f, -1.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -8.075600e-002f, -1.310510e-001f, -4.232570e-001f }, { 0.000000e+000f, 0.000000e+000f, -1.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.192440e-001f, -1.110510e-001f, -4.232570e-001f }, { 0.000000e+000f, 0.000000e+000f, -1.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -8.075600e-002f, -1.110510e-001f, -2.232570e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.192440e-001f, -1.110510e-001f, -4.232570e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -8.075600e-002f, -1.110510e-001f, -4.232570e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.192440e-001f, -1.110510e-001f, -2.232570e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -8.075600e-002f, -1.310510e-001f, -2.232570e-001f }, { 0.000000e+000f, 0.000000e+000f, 1.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.192440e-001f, -1.110510e-001f, -2.232570e-001f }, { 0.000000e+000f, 0.000000e+000f, 1.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -8.075600e-002f, -1.110510e-001f, -2.232570e-001f }, { 0.000000e+000f, 0.000000e+000f, 1.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.192440e-001f, -1.310510e-001f, -2.232570e-001f }, { 0.000000e+000f, 0.000000e+000f, 1.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -8.075600e-002f, -1.310510e-001f, -4.232570e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.192440e-001f, -1.310510e-001f, -2.232570e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -8.075600e-002f, -1.310510e-001f, -2.232570e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.192440e-001f, -1.310510e-001f, -4.232570e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.192440e-001f, -1.110510e-001f, -4.232570e-001f }, { 1.000000e+000f, 0.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.192440e-001f, -1.310510e-001f, -2.232570e-001f }, { 1.000000e+000f, 0.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.192440e-001f, -1.310510e-001f, -4.232570e-001f }, { 1.000000e+000f, 0.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.192440e-001f, -1.110510e-001f, -2.232570e-001f }, { 1.000000e+000f, 0.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -8.075600e-002f, -1.110510e-001f, -2.232570e-001f }, { -1.000000e+000f, 0.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -8.075600e-002f, -1.310510e-001f, -4.232570e-001f }, { -1.000000e+000f, 0.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -8.075600e-002f, -1.310510e-001f, -2.232570e-001f }, { -1.000000e+000f, 0.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -8.075600e-002f, -1.110510e-001f, -4.232570e-001f }, { -1.000000e+000f, 0.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 9.283900e-002f, -1.275760e-001f, -2.994020e-001f }, { 9.510568e-001f, 0.000000e+000f, 3.090159e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 8.180800e-002f, -3.454200e-001f, -2.777540e-001f }, { 8.090171e-001f, 0.000000e+000f, 5.877851e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 9.283900e-002f, -3.454200e-001f, -2.994020e-001f }, { 9.510568e-001f, 0.000000e+000f, 3.090159e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 8.180800e-002f, -1.275760e-001f, -2.777540e-001f }, { 8.090171e-001f, 0.000000e+000f, 5.877851e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 6.462900e-002f, -3.454200e-001f, -2.605740e-001f }, { 5.877851e-001f, 0.000000e+000f, 8.090171e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 6.462900e-002f, -1.275760e-001f, -2.605740e-001f }, { 5.877851e-001f, 0.000000e+000f, 8.090171e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 4.298100e-002f, -3.454200e-001f, -2.495440e-001f }, { 3.090169e-001f, 0.000000e+000f, 9.510565e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 4.298100e-002f, -1.275760e-001f, -2.495440e-001f }, { 3.090169e-001f, 0.000000e+000f, 9.510565e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.898400e-002f, -3.454200e-001f, -2.457440e-001f }, { 0.000000e+000f, 0.000000e+000f, 1.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.898400e-002f, -1.275760e-001f, -2.457440e-001f }, { 0.000000e+000f, 0.000000e+000f, 1.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.013000e-003f, -3.454200e-001f, -2.495440e-001f }, { -3.090172e-001f, 0.000000e+000f, 9.510565e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.013000e-003f, -1.275760e-001f, -2.495440e-001f }, { -3.090172e-001f, 0.000000e+000f, 9.510565e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -2.666100e-002f, -3.454200e-001f, -2.605740e-001f }, { -5.877851e-001f, 0.000000e+000f, 8.090171e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -2.666100e-002f, -1.275760e-001f, -2.605740e-001f }, { -5.877851e-001f, 0.000000e+000f, 8.090171e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -4.384000e-002f, -3.454200e-001f, -2.777540e-001f }, { -8.090171e-001f, 0.000000e+000f, 5.877851e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -4.384000e-002f, -1.275760e-001f, -2.777540e-001f }, { -8.090171e-001f, 0.000000e+000f, 5.877851e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.487100e-002f, -3.454200e-001f, -2.994020e-001f }, { -9.510565e-001f, 0.000000e+000f, 3.090169e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.487100e-002f, -1.275760e-001f, -2.994020e-001f }, { -9.510565e-001f, 0.000000e+000f, 3.090169e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.867100e-002f, -3.454200e-001f, -3.233990e-001f }, { -1.000000e+000f, 0.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.867100e-002f, -1.275760e-001f, -3.233990e-001f }, { -1.000000e+000f, 0.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.487100e-002f, -3.454200e-001f, -3.473960e-001f }, { -9.510565e-001f, 0.000000e+000f, -3.090172e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.487100e-002f, -1.275760e-001f, -3.473960e-001f }, { -9.510565e-001f, 0.000000e+000f, -3.090172e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -4.384000e-002f, -3.454200e-001f, -3.690430e-001f }, { -8.090171e-001f, 0.000000e+000f, -5.877851e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -4.384000e-002f, -1.275760e-001f, -3.690430e-001f }, { -8.090171e-001f, 0.000000e+000f, -5.877851e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -2.666100e-002f, -3.454200e-001f, -3.862230e-001f }, { -5.877851e-001f, 0.000000e+000f, -8.090171e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -2.666100e-002f, -1.275760e-001f, -3.862230e-001f }, { -5.877851e-001f, 0.000000e+000f, -8.090171e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.013000e-003f, -3.454200e-001f, -3.972530e-001f }, { -3.090172e-001f, 0.000000e+000f, -9.510565e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.013000e-003f, -1.275760e-001f, -3.972530e-001f }, { -3.090172e-001f, 0.000000e+000f, -9.510565e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.898400e-002f, -3.454200e-001f, -4.010540e-001f }, { 0.000000e+000f, 0.000000e+000f, -1.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.898400e-002f, -1.275760e-001f, -4.010540e-001f }, { 0.000000e+000f, 0.000000e+000f, -1.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 4.298100e-002f, -3.454200e-001f, -3.972530e-001f }, { 3.090169e-001f, 0.000000e+000f, -9.510565e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 4.298100e-002f, -1.275760e-001f, -3.972530e-001f }, { 3.090169e-001f, 0.000000e+000f, -9.510565e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 6.462900e-002f, -3.454200e-001f, -3.862230e-001f }, { 5.877851e-001f, 0.000000e+000f, -8.090171e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 6.462900e-002f, -1.275760e-001f, -3.862230e-001f }, { 5.877851e-001f, 0.000000e+000f, -8.090171e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 8.180800e-002f, -3.454200e-001f, -3.690430e-001f }, { 8.090171e-001f, 0.000000e+000f, -5.877851e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 8.180800e-002f, -1.275760e-001f, -3.690430e-001f }, { 8.090171e-001f, 0.000000e+000f, -5.877851e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 9.283900e-002f, -3.454200e-001f, -3.473960e-001f }, { 9.510565e-001f, 0.000000e+000f, -3.090169e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 9.283900e-002f, -1.275760e-001f, -3.473960e-001f }, { 9.510565e-001f, 0.000000e+000f, -3.090169e-001f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 9.663900e-002f, -3.454200e-001f, -3.233990e-001f }, { 1.000000e+000f, 0.000000e+000f, -1.000000e-006f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 9.663900e-002f, -1.275760e-001f, -3.233990e-001f }, { 1.000000e+000f, 0.000000e+000f, -1.000000e-006f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.898400e-002f, -3.454200e-001f, -3.233990e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 9.283900e-002f, -3.454200e-001f, -2.994020e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 8.180800e-002f, -3.454200e-001f, -2.777540e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 6.462900e-002f, -3.454200e-001f, -2.605740e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 4.298100e-002f, -3.454200e-001f, -2.495440e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.898400e-002f, -3.454200e-001f, -2.457440e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.013000e-003f, -3.454200e-001f, -2.495440e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -2.666100e-002f, -3.454200e-001f, -2.605740e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -4.384000e-002f, -3.454200e-001f, -2.777540e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.487100e-002f, -3.454200e-001f, -2.994020e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.867100e-002f, -3.454200e-001f, -3.233990e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.487100e-002f, -3.454200e-001f, -3.473960e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -4.384000e-002f, -3.454200e-001f, -3.690430e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -2.666100e-002f, -3.454200e-001f, -3.862230e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.013000e-003f, -3.454200e-001f, -3.972530e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.898400e-002f, -3.454200e-001f, -4.010540e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 4.298100e-002f, -3.454200e-001f, -3.972530e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 6.462900e-002f, -3.454200e-001f, -3.862230e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 8.180800e-002f, -3.454200e-001f, -3.690430e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 9.283900e-002f, -3.454200e-001f, -3.473960e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 9.663900e-002f, -3.454200e-001f, -3.233990e-001f }, { 0.000000e+000f, -1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.898400e-002f, -1.275760e-001f, -3.233990e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 8.180800e-002f, -1.275760e-001f, -2.777540e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 9.283900e-002f, -1.275760e-001f, -2.994020e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 6.462900e-002f, -1.275760e-001f, -2.605740e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 4.298100e-002f, -1.275760e-001f, -2.495440e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.898400e-002f, -1.275760e-001f, -2.457440e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.013000e-003f, -1.275760e-001f, -2.495440e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -2.666100e-002f, -1.275760e-001f, -2.605740e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -4.384000e-002f, -1.275760e-001f, -2.777540e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.487100e-002f, -1.275760e-001f, -2.994020e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.867100e-002f, -1.275760e-001f, -3.233990e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.487100e-002f, -1.275760e-001f, -3.473960e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -4.384000e-002f, -1.275760e-001f, -3.690430e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -2.666100e-002f, -1.275760e-001f, -3.862230e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { -5.013000e-003f, -1.275760e-001f, -3.972530e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 1.898400e-002f, -1.275760e-001f, -4.010540e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 4.298100e-002f, -1.275760e-001f, -3.972530e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 6.462900e-002f, -1.275760e-001f, -3.862230e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 8.180800e-002f, -1.275760e-001f, -3.690430e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 9.283900e-002f, -1.275760e-001f, -3.473960e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } },
    { { 9.663900e-002f, -1.275760e-001f, -3.233990e-001f }, { 0.000000e+000f, 1.000000e+000f, -0.000000e+000f }, { 1.000000e+000, 1.000000e+000, 1.000000e+000, 1.000000e+000 }, { 0.000000e+000f, 0.000000e+000f } }
};

const uint16_t PodiumModel::indices[276] =
{
    2, 0, 1,
    1, 0, 3,
    6, 4, 5,
    5, 4, 7,
    10, 8, 9,
    9, 8, 11,
    14, 12, 13,
    13, 12, 15,
    18, 16, 17,
    17, 16, 19,
    22, 20, 21,
    21, 20, 23,
    26, 24, 25,
    25, 24, 27,
    25, 27, 28,
    28, 27, 29,
    28, 29, 30,
    30, 29, 31,
    30, 31, 32,
    32, 31, 33,
    32, 33, 34,
    34, 33, 35,
    34, 35, 36,
    36, 35, 37,
    36, 37, 38,
    38, 37, 39,
    38, 39, 40,
    40, 39, 41,
    40, 41, 42,
    42, 41, 43,
    42, 43, 44,
    44, 43, 45,
    44, 45, 46,
    46, 45, 47,
    46, 47, 48,
    48, 47, 49,
    48, 49, 50,
    50, 49, 51,
    50, 51, 52,
    52, 51, 53,
    52, 53, 54,
    54, 53, 55,
    54, 55, 56,
    56, 55, 57,
    56, 57, 58,
    58, 57, 59,
    58, 59, 60,
    60, 59, 61,
    60, 61, 62,
    62, 61, 63,
    62, 63, 26,
    26, 63, 24,
    66, 64, 65,
    67, 64, 66,
    68, 64, 67,
    69, 64, 68,
    70, 64, 69,
    71, 64, 70,
    72, 64, 71,
    73, 64, 72,
    74, 64, 73,
    75, 64, 74,
    76, 64, 75,
    77, 64, 76,
    78, 64, 77,
    79, 64, 78,
    80, 64, 79,
    81, 64, 80,
    82, 64, 81,
    83, 64, 82,
    84, 64, 83,
    65, 64, 84,
    87, 85, 86,
    86, 85, 88,
    88, 85, 89,
    89, 85, 90,
    90, 85, 91,
    91, 85, 92,
    92, 85, 93,
    93, 85, 94,
    94, 85, 95,
    95, 85, 96,
    96, 85, 97,
    97, 85, 98,
    98, 85, 99,
    99, 85, 100,
    100, 85, 101,
    101, 85, 102,
    102, 85, 103,
    103, 85, 104,
    104, 85, 105,
    105, 85, 87
};
