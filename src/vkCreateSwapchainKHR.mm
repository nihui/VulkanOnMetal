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

VKAPI_ATTR VkResult VKAPI_CALL vkCreateSwapchainKHR(
    VkDevice                        device,
    const VkSwapchainCreateInfoKHR* pCreateInfo,
    const VkAllocationCallbacks*    pAllocator,
    VkSwapchainKHR*                 pSwapchain)
{
    VkSwapchainKHR swapchain = nullptr;
    if (pAllocator)
    {
        swapchain = static_cast<VkSwapchainKHR>(pAllocator->pfnAllocation(nullptr, sizeof(VkSwapchainKHR_T), 8, VK_SYSTEM_ALLOCATION_SCOPE_DEVICE));
    }
    else
    {
        swapchain = new VkSwapchainKHR_T();
    }

    *pSwapchain = swapchain;

    return VK_SUCCESS;
}
