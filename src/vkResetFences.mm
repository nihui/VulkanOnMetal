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

VKAPI_ATTR VkResult VKAPI_CALL vkResetFences(
    VkDevice       device,
    uint32_t       fenceCount,
    const VkFence* pFences)
{
    for (uint32_t i = 0; i < fenceCount; ++i)
    {
        pFences[i]->fence = [device->physicalDevice->device newFence];
    }
    return VK_SUCCESS;
}
