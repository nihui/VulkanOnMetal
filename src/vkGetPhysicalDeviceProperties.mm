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

#include "_vulkan.h"

VKAPI_ATTR void VKAPI_CALL vkGetPhysicalDeviceProperties(
    VkPhysicalDevice            physicalDevice,
    VkPhysicalDeviceProperties* pProperties)
{
    VkPhysicalDeviceLimits limits = {};
    limits.maxImageDimension1D    = 16384;
    limits.maxImageDimension2D    = 16384;
    limits.maxImageDimension3D    = 2048;
    limits.maxImageDimensionCube  = 16384;
    limits.maxImageArrayLayers    = 2048;
    limits.maxTexelBufferElements;
    limits.maxUniformBufferRange;
    limits.maxStorageBufferRange;
    limits.maxPushConstantsSize;
    limits.maxMemoryAllocationCount;
    limits.maxSamplerAllocationCount;
    limits.bufferImageGranularity;
    limits.sparseAddressSpaceSize;
    limits.maxBoundDescriptorSets;
    limits.maxPerStageDescriptorSamplers;
    limits.maxPerStageDescriptorUniformBuffers;
    limits.maxPerStageDescriptorStorageBuffers;
    limits.maxPerStageDescriptorSampledImages;
    limits.maxPerStageDescriptorStorageImages;
    limits.maxPerStageDescriptorInputAttachments;
    limits.maxPerStageResources;
    limits.maxDescriptorSetSamplers;
    limits.maxDescriptorSetUniformBuffers;
    limits.maxDescriptorSetUniformBuffersDynamic;
    limits.maxDescriptorSetStorageBuffers;
    limits.maxDescriptorSetStorageBuffersDynamic;
    limits.maxDescriptorSetSampledImages;
    limits.maxDescriptorSetStorageImages;
    limits.maxDescriptorSetInputAttachments;
    limits.maxVertexInputAttributes;
    limits.maxVertexInputBindings;
    limits.maxVertexInputAttributeOffset;
    limits.maxVertexInputBindingStride;
    limits.maxVertexOutputComponents;
    limits.maxTessellationGenerationLevel;
    limits.maxTessellationPatchSize;
    limits.maxTessellationControlPerVertexInputComponents;
    limits.maxTessellationControlPerVertexOutputComponents;
    limits.maxTessellationControlPerPatchOutputComponents;
    limits.maxTessellationControlTotalOutputComponents;
    limits.maxTessellationEvaluationInputComponents;
    limits.maxTessellationEvaluationOutputComponents;
    limits.maxGeometryShaderInvocations;
    limits.maxGeometryInputComponents;
    limits.maxGeometryOutputComponents;
    limits.maxGeometryOutputVertices;
    limits.maxGeometryTotalOutputComponents;
    limits.maxFragmentInputComponents;
    limits.maxFragmentOutputAttachments;
    limits.maxFragmentDualSrcAttachments;
    limits.maxFragmentCombinedOutputResources;
    limits.maxComputeSharedMemorySize;
    limits.maxComputeWorkGroupCount[0];
    limits.maxComputeWorkGroupCount[1];
    limits.maxComputeWorkGroupCount[2];
    limits.maxComputeWorkGroupInvocations;
    limits.maxComputeWorkGroupSize[0];
    limits.maxComputeWorkGroupSize[1];
    limits.maxComputeWorkGroupSize[2];
    limits.subPixelPrecisionBits;
    limits.subTexelPrecisionBits;
    limits.mipmapPrecisionBits;
    limits.maxDrawIndexedIndexValue;
    limits.maxDrawIndirectCount;
    limits.maxSamplerLodBias;
    limits.maxSamplerAnisotropy;
    limits.maxViewports;
    limits.maxViewportDimensions[0];
    limits.maxViewportDimensions[1];
    limits.viewportBoundsRange[0];
    limits.viewportBoundsRange[1];
    limits.viewportSubPixelBits;
    limits.minMemoryMapAlignment;
    limits.minTexelBufferOffsetAlignment;
    limits.minUniformBufferOffsetAlignment;
    limits.minStorageBufferOffsetAlignment;
    limits.minTexelOffset;
    limits.maxTexelOffset;
    limits.minTexelGatherOffset;
    limits.maxTexelGatherOffset;
    limits.minInterpolationOffset;
    limits.maxInterpolationOffset;
    limits.subPixelInterpolationOffsetBits;
    limits.maxFramebufferWidth;
    limits.maxFramebufferHeight;
    limits.maxFramebufferLayers;
    limits.framebufferColorSampleCounts;
    limits.framebufferDepthSampleCounts;
    limits.framebufferStencilSampleCounts;
    limits.framebufferNoAttachmentsSampleCounts;
    limits.maxColorAttachments;
    limits.sampledImageColorSampleCounts;
    limits.sampledImageIntegerSampleCounts;
    limits.sampledImageDepthSampleCounts;
    limits.sampledImageStencilSampleCounts;
    limits.storageImageSampleCounts;
    limits.maxSampleMaskWords;
    limits.timestampComputeAndGraphics;
    limits.timestampPeriod;
    limits.maxClipDistances;
    limits.maxCullDistances;
    limits.maxCombinedClipAndCullDistances;
    limits.discreteQueuePriorities;
    limits.pointSizeRange[0];
    limits.pointSizeRange[1];
    limits.lineWidthRange[0];
    limits.lineWidthRange[1];
    limits.pointSizeGranularity;
    limits.lineWidthGranularity;
    limits.strictLines;
    limits.standardSampleLocations;
    limits.optimalBufferCopyOffsetAlignment;
    limits.optimalBufferCopyRowPitchAlignment;
    limits.nonCoherentAtomSize;

    VkPhysicalDeviceSparseProperties sparseProperties = {};
    sparseProperties.residencyStandard2DBlockShape;
    sparseProperties.residencyStandard2DMultisampleBlockShape;
    sparseProperties.residencyStandard3DBlockShape;
    sparseProperties.residencyAlignedMipSize;
    sparseProperties.residencyNonResidentStrict;

    VkPhysicalDeviceProperties properties = {};
    properties.apiVersion                 = VK_MAKE_VERSION(VK_VERSION_MAJOR(VK_API_VERSION_1_0), VK_VERSION_MINOR(VK_API_VERSION_1_0), VK_VERSION_PATCH(VK_HEADER_VERSION));
    properties.driverVersion;
    properties.vendorID;
    properties.deviceID;
    properties.deviceType;
    properties.deviceName;
    properties.pipelineCacheUUID;
    properties.limits           = limits;
    properties.sparseProperties = sparseProperties;

    *pProperties = properties;
}
