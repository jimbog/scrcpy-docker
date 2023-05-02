#Scrcpy in Docker
Instructions
- build file with:
`docker build -t scrcpy --build-arg KEYBOARD_LAYOUT=us`
` run with:
`x11docker --  "--privileged -v /dev/bus/usb:/dev/bus/usb -v /home/j/.android/:/root/.android "  scrcpy`

With help from:
- https://github.com/mviereck/x11docker/issues/468
- https://github.com/mviereck/x11docker/issues/89
