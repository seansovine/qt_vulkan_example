qt_add_executable(hellovulkanwidget
    renderer/trianglerenderer.cpp
	renderer/trianglerenderer.h
	app/vulkanwidget.h
    app/vulkanwidget.cpp
    app/main.cpp
)

set_target_properties(hellovulkanwidget PROPERTIES
    WIN32_EXECUTABLE TRUE
    MACOSX_BUNDLE    TRUE
)

target_link_libraries(hellovulkanwidget PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Widgets
)

# Resources:
set_source_files_properties("renderer/shader/color_frag.spv"
    PROPERTIES QT_RESOURCE_ALIAS "color_frag.spv"
)

set_source_files_properties("renderer/shader/color_vert.spv"
    PROPERTIES QT_RESOURCE_ALIAS "color_vert.spv"
)

set(hellovulkanwidget_resource_files
    "renderer/shader/color_frag.spv"
    "renderer/shader/color_vert.spv"
)

qt_add_resources(hellovulkanwidget "hellovulkanwidget"
    PREFIX
        "/"
    FILES
        ${hellovulkanwidget_resource_files}
)
