# Bootlin Toolchain gcc Dockerfile

A Dockerfile with Bootlin Toolchain from NVIDIA Jetson Linux, based on Ubuntu Docker Image.

A build of the Dockerfile contains:

* Ubuntu 20.04
* Bootlin Toolchain gcc 9.3

Toolchain binaries are included in [NVIDIA Jetson Linux 35.2.1](https://developer.nvidia.com/embedded/jetson-linux-r3521) (_[direct download link](https://developer.nvidia.com/embedded/jetson-linux/bootlin-toolchain-gcc-93)_) and documented at [docs.nvidia.com](https://docs.nvidia.com/jetson/archives/r35.2.1/DeveloperGuide/text/AT/JetsonLinuxToolchain.html).

## How to build

First, download the toolchain binaries from the download link above to current folder. Then, build:

```
docker build . -t bootlin-toolchain
```

## How to run

```
docker run --rm -it bootlin-toolchain
```
