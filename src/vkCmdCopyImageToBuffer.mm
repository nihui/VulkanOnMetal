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

VKAPI_ATTR void VKAPI_CALL vkCmdCopyImageToBuffer(
    VkCommandBuffer          commandBuffer,
    VkImage                  srcImage,
    VkImageLayout            srcImageLayout,
    VkBuffer                 dstBuffer,
    uint32_t                 regionCount,
    const VkBufferImageCopy* pRegions)
{
    for (uint32_t i = 0; i < regionCount; ++i)
    {
        MTLOrigin srcOrigin = {};
        srcOrigin.x         = pRegions[i].imageOffset.x;
        srcOrigin.y         = pRegions[i].imageOffset.y;
        srcOrigin.z         = pRegions[i].imageOffset.z;

        MTLSize srcSize = {};
        srcSize.width   = pRegions[i].imageExtent.width;
        srcSize.height  = pRegions[i].imageExtent.height;
        srcSize.depth   = pRegions[i].imageExtent.depth;

        [(id<MTLBlitCommandEncoder>)commandBuffer->encoder copyFromTexture:srcImage->texture sourceSlice:pRegions[i].imageSubresource.baseArrayLayer sourceLevel:pRegions[i].imageSubresource.mipLevel sourceOrigin:srcOrigin sourceSize:srcSize toBuffer:dstBuffer->buffer destinationOffset:pRegions[i].bufferOffset destinationBytesPerRow:pRegions[i].bufferRowLength destinationBytesPerImage:pRegions[i].bufferImageHeight];
    }
}
