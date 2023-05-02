FROM x11docker/lxde
ENV DEBIAN_FRONTEND noninteractive

# Install required packages

RUN apt update && \
    apt install -y sudo ffmpeg libsdl2-2.0-0 adb wget gcc git pkg-config meson ninja-build libsdl2-dev libavcodec-dev libavdevice-dev libavformat-dev libavutil-dev libswresample-dev libusb-1.0-0 libusb-1.0-0-dev xserver-xorg-video-dummy x11-xserver-utils && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*


USER root
# Clone the scrcpy repo and install the latest release
RUN git clone https://github.com/Genymobile/scrcpy && \
    cd scrcpy && \
    ./install_release.sh

 
# Set the default command to run scrcpy
ENTRYPOINT echo hi; scrcpy --no-audio
