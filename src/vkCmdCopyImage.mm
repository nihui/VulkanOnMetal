// Copyright 2017-2018 Chabloom LC
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

VKAPI_ATTR void VKAPI_CALL vkCmdCopyImage(
    VkCommandBuffer    commandBuffer,
    VkImage            srcImage,
    VkImageLayout      srcImageLayout,
    VkImage            dstImage,
    VkImageLayout      dstImageLayout,
    uint32_t           regionCount,
    const VkImageCopy* pRegions)
{
    for (uint32_t i = 0; i < regionCount; ++i)
    {
        MTLOrigin srcOrigin = {};
        srcOrigin.x         = pRegions[i].srcOffset.x;
        srcOrigin.y         = pRegions[i].srcOffset.y;
        srcOrigin.z         = pRegions[i].srcOffset.z;

        MTLOrigin dstOrigin = {};
        dstOrigin.x         = pRegions[i].dstOffset.x;
        dstOrigin.y         = pRegions[i].dstOffset.y;
        dstOrigin.z         = pRegions[i].dstOffset.z;

        MTLSize srcSize = {};
        srcSize.width   = pRegions[i].extent.width;
        srcSize.height  = pRegions[i].extent.height;
        srcSize.depth   = pRegions[i].extent.depth;

        [(id<MTLBlitCommandEncoder>)commandBuffer->encoder copyFromTexture:srcImage->texture sourceSlice:pRegions[i].srcSubresource.baseArrayLayer sourceLevel:pRegions[i].srcSubresource.mipLevel sourceOrigin:srcOrigin sourceSize:srcSize toTexture:dstImage->texture destinationSlice:pRegions[i].dstSubresource.baseArrayLayer destinationLevel:pRegions[i].dstSubresource.mipLevel destinationOrigin:dstOrigin];
    }
}
