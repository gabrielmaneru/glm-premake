project "glm"
	kind "StaticLib"
	language "C++"
	staticruntime "On"

	targetdir ("build/" .. outputdir .. "/%{prj.name}/bin")
	objdir ("build/" .. outputdir .. "/%{prj.name}/obj")

	files
	{
		"glm/**.cpp",
		"glm/**.hpp",
		"glm/**.inl"
	}
	
	includedirs
	{
		"",
	}
	
	filter "system:windows"
		systemversion "latest"

		defines 
		{ 
			"_CRT_SECURE_NO_WARNINGS"
		}

	filter "configurations:debug"
		symbols "On"
				
	filter "configurations:release"
		optimize "On"