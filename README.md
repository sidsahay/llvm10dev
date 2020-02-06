# llvm10dev
Dockerfile for LLVM 10 development image, 32 bit version. Note: the llvm 10 repos seem to be
unsigned right now so use at your own risk.

## Included utilities
* git
* make
* g++
* vim

## How to use
The following command runs a shell in a disposable container and passes the PWD as a volume called `/data` (add a `sudo` if your user is not part of the `docker` group). It also mounts the `gitinfo` file so that you can commit from inside the container. Run this command in your working directory, navigate to `/data` inside the container, and build your 32 bit LLVM 10 projects as usual. You could also edit the files directly from on your machine and keep another terminal tab with the container shell open just to build and run stuff, because volumes ftw.

`docker run --rm -v ~/.gitconfig:/etc/gitconfig -v $PWD:/data -it sidsahay/llvm10dev`
