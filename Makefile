# This is just a convenience script for running the CMake build in development.

.PHONY: configure build

# I'm using a local Qt install. You can also use system Qt.
QT_PATH := "/home/sean/Qt/6.7.0/gcc_64"

configure:
	@cmake -B build -DCMAKE_PREFIX_PATH=$(QT_PATH) -S .

build:
	@cmake --build build

format:
	@find src/ -regex '.*\.\(cpp\|hpp\|c\|h\|cc\|hh\|cxx\|hxx\)' -exec clang-format -style=file -i {} \;

run:
	@build/src/hellovulkanwidget
