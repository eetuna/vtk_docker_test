# vtk_docker_test

echo $XDG_SESSION_TYPE
# If this prints 'wayland', you're on Wayland. If 'x11', you are on x11.
# But 
echo $DISPLAY
# should still return something like `:0` OR `:1` etc

# By default, Linux containers cannot show GUI windows.
# If you’re running the container on Linux and want to see the GUI window and 
# If $DISPLAY exists and /tmp/.X11-unix is present
# Enable X11 Forwarding
# Allow Docker to access your display: On Linux host: 
# And do this before running devcontainer on vscode (on the actual linux terminal)

xhost +local:docker

# Enforce Software Rendering via Mesa (LLVMpipe) - done in devcontainer.json "run Args"
# Confirm It's Using Software Renderer
# Run inside the devcontainer (devcontainer terminal):

glxinfo | grep -i render

# Expected output: `OpenGL renderer string: llvmpipe (LLVM ...)`

# Might see these errors
libGL: Can't open configuration file /etc/drirc
libGL: did not find extension DRI_Kopper

These are harmless:
drirc is an optional config file; if missing, Mesa just uses defaults.
DRI_Kopper and DRI2_Flush are not used with llvmpipe.

# Run the app
./build/main

# Should see a cone