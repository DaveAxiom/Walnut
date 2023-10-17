-- WalnutExternal.lua

filter "system:windows"
	VULKAN_SDK = os.getenv("VULKAN_SDK")

	IncludeDir = {}
	IncludeDir["VulkanSDK"] = "%{VULKAN_SDK}/Include"
	IncludeDir["glm"] = "../vendor/glm"

	LibraryDir = {}
	LibraryDir["VulkanSDK"] = "%{VULKAN_SDK}/Lib"

	Library = {}
	Library["Vulkan"] = "%{LibraryDir.VulkanSDK}/vulkan-1.lib"

--	group "Dependencies"
	include "vendor/imgui"
	--include "vendor/GLFW"
--	group ""

filter "system:linux"

--group "Dependencies"
	include "vendor/imgui"
	--IncludeDir["GLFW"] = "%{wks.location}/vendor/GLFW/include"
	--include "vendor/GLFW"

--group ""

group "Core"
include "Walnut"
group ""
