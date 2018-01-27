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

VKAPI_ATTR VkResult VKAPI_CALL vkEnumeratePhysicalDevices(
    VkInstance        instance,
    uint32_t*         pPhysicalDeviceCount,
    VkPhysicalDevice* pPhysicalDevices)
{
    auto devices = MTLCopyAllDevices();

    uint32_t physicalDeviceCount = 0;
    for (uint32_t i = 0; i < devices.count; ++i)
    {
        if (pPhysicalDevices)
        {
            VkPhysicalDevice physicalDevice = new VkPhysicalDevice_T();
            physicalDevice->device          = devices[i];
            physicalDevice->instance        = instance;

            pPhysicalDevices[physicalDeviceCount] = physicalDevice;
        }
        ++physicalDeviceCount;
    }

    *pPhysicalDeviceCount = physicalDeviceCount;

    return VK_SUCCESS;
}
