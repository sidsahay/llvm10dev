# llvm10dev
Dockerfile for LLVM 10 development image, 32 bit version. Note: the llvm 10 repos seem to be
unsigned right now so use at your own risk. `run.sh` is a script I use to run
the container in the PWD and mount it inside as a folder called `data`. It also
forwards your `gitinfo` to the container so that you can use git from inside and
not have to config your user name and email every time.
