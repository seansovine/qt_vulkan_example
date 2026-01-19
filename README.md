# Qt + Vulkan + CMake Example Project

This is an example project to explore the integration of Vulkan graphics rendering into
a Qt Widgets application.

At the moment it's just the official QWidget and QVulkanWindow integration example
from Qt, that is available [here](https://doc.qt.io/qt-6/qtgui-hellovulkanwidget-example.html)
and also in the Qt source [repository](https://code.qt.io/cgit/qt/qtbase.git/tree/examples/vulkan/hellovulkanwidget?h=6.7).
We have grabbed only the CMake build files and structured the source
directory a little differently, and have added some convenience scripts.

## Building

It can be built with the following steps:

```shell
# Compile the shaders to SPIR-V
src/renderer/shader/compile.sh

# Configure and build
make configure
make build

# Run the built executable
make run
```

The Makefile is just a convenience I use for development. I have the path to my local Qt build in
the`QT_PATH` variable; it can be left empty to use a system Qt install.

## Project status

In the near-ish future I hope to try out using Qt as a GUI for my work-in-progress
[Vulkan Grapher](https://github.com/seansovine/vulkan_grapher) 3D function grapher.
What I have in mind for that may be something that is more suitable for a traditional
retained-mode GUI vs. an immediate-mode GUI like ImGui, though I'm not sure yet.

It also looks like an interesting opportunity to learn more about Vulkan and take a look
into how Qt renders things. But, I have a few in-progress hobby projects so there's also
a chance I won't get around to digging into this one for a while. This project setup should
make it easier to get started when I do get around to it. And if anyone else stumbles
onto it, it might save them a couple steps in extracting a running example from the Qt
source tree.
