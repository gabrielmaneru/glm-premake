project "glm"
	kind "StaticLib"
	language "C++"
	staticruntime "On"

	targetdir ("build/" .. outputdir .. "/%{prj.name}/bin")
	objdir ("build/" .. outputdir .. "/%{prj.name}/obj")

	files
	{
		"**.cpp",
		"**.hpp",
		"**.inl"
	}
	
	filter "system:windows"
		systemversion "latest"