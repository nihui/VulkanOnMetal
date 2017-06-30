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

VKAPI_ATTR void VKAPI_CALL vkCmdCopyBufferToImage(
    VkCommandBuffer          commandBuffer,
    VkBuffer                 srcBuffer,
    VkImage                  dstImage,
    VkImageLayout            dstImageLayout,
    uint32_t                 regionCount,
    const VkBufferImageCopy* pRegions)
{
    for (uint32_t i = 0; i < regionCount; ++i)
    {
        MTLOrigin dstOrigin = {};
        dstOrigin.x         = pRegions[i].imageOffset.x;
        dstOrigin.y         = pRegions[i].imageOffset.y;
        dstOrigin.z         = pRegions[i].imageOffset.z;

        MTLSize srcSize = {};
        srcSize.width   = pRegions[i].imageExtent.width;
        srcSize.height  = pRegions[i].imageExtent.height;
        srcSize.depth   = pRegions[i].imageExtent.depth;

        [(id<MTLBlitCommandEncoder>)commandBuffer->encoder copyFromBuffer:srcBuffer->buffer sourceOffset:pRegions[i].bufferOffset sourceBytesPerRow:pRegions[i].bufferRowLength sourceBytesPerImage:pRegions[i].bufferImageHeight sourceSize:srcSize toTexture:dstImage->texture destinationSlice:pRegions[i].imageSubresource.baseArrayLayer destinationLevel:pRegions[i].imageSubresource.mipLevel destinationOrigin:dstOrigin];
    }
}
