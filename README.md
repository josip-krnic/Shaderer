# GLSL Shader Program

This is a program that can execute Shader programs written in GLSL.
So far it has been tested on Linux Mint (Cinammon Edition).

## Building

To build this project, run:
    ./configure
    make

Configure file installs the source code for GLFW and compiles it. It than moves
the GLFW library file to the libs directory. After executing the make command,
all files are compiled into object files and an executable file, which can be
found in the build directory.

Any comments, suggestions and criticism are welcome.
You can reach out to me via: krnic.josip.jk@gmail.com