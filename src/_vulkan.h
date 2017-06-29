// Copyright 2017 Chabloom LC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#pragma once

#include <Metal/Metal.h>

#include <vulkan/vulkan.h>

#include <string>
#include <vector>

struct VkInstance_T
{
    VkApplicationInfo        applicationInfo;
    std::vector<std::string> enabledLayerNames;
    std::vector<std::string> enabledExtensionNames;
};

struct VkPhysicalDevice_T
{
    VkInstance    instance;
    id<MTLDevice> device;
};

struct VkDevice_T
{
    VkPhysicalDevice     physicalDevice;
    std::vector<VkQueue> queues;
};

struct VkQueue_T
{
    VkDevice            device;
    id<MTLCommandQueue> queue;
};

struct VkSemaphore_T
{
};

struct VkCommandBuffer_T
{
};

struct VkFence_T
{
};

struct VkDeviceMemory_T
{
};

struct VkBuffer_T
{
};

struct VkImage_T
{
};

struct VkEvent_T
{
};

struct VkQueryPool_T
{
};

struct VkBufferView_T
{
};

struct VkImageView_T
{
};

struct VkShaderModule_T
{
    id<MTLLibrary> library;
};

struct VkPipelineCache_T
{
};

struct VkPipelineLayout_T
{
};

struct VkRenderPass_T
{
};

struct VkPipeline_T
{
};

struct VkDescriptorSetLayout_T
{
};

struct VkSampler_T
{
};

struct VkDescriptorPool_T
{
};

struct VkDescriptorSet_T
{
};

struct VkFramebuffer_T
{
};

struct VkCommandPool_T
{
};

struct VkSurfaceKHR_T
{
    const void* view;
};

struct VkSwapchainKHR_T
{
    VkDevice device;
};

struct VkDebugReportCallbackEXT_T
{
};
