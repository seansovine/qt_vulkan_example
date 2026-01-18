# Qt + Vulkan + CMake Example Project

This is a straightforward adaptation of the Qt QWidget and QVulkanWindow integration
example available [here](https://doc.qt.io/qt-6/qtgui-hellovulkanwidget-example.html).
We have grabbed only the CMake build files and structured the source
directory a little differently, and have added some convenience scripts.

The original can be found in the Qt repository, viewable online
[here](https://code.qt.io/cgit/qt/qtbase.git/tree/examples/vulkan/hellovulkanwidget?h=6.7).

## Building

You can build the program with the following steps:

```shell
# Compile the shaders to SPIR-V
src/renderer/shader/compile.sh

# Configure and build
make configure
make build

# Run the built executable
make run
```

The Makefile is just a convenience for development use. You will likely need
to modify its `QT_PATH` variable, or leave it empty if you have a system Qt install.
