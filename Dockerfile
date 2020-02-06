FROM i386/debian:buster
MAINTAINER Siddharth Sahay (siddharthsahay9700@gmail.com)

RUN apt-get update
RUN apt-get install -y vim git make g++ wget lsb-release gnupg2 software-properties-common 
RUN echo "deb [trusted=yes] http://apt.llvm.org/buster/    llvm-toolchain-buster-10    main" | tee -a /etc/apt/sources.list
RUN echo "deb-src [trusted=yes] http://apt.llvm.org/buster/    llvm-toolchain-buster-10    main" | tee -a /etc/apt/sources.list
RUN apt-get update 
RUN apt-get install -y clang-10 lldb-10 lld-10 clangd-10 llvm-10 llvm-10-dev llvm-10-doc llvm-10-runtime llvm-10-tools clang-10-doc libclang-10-dev liblldb-10 liblldb-10-dev
ENV PATH="/usr/lib/llvm-10/include:${PATH}"
ENV PATH="/usr/lib/llvm-10/bin:${PATH}"
RUN printf 'export PS1="%s"\n' "\e[0;36m\h\e[0;33m \w\e[1;30m:\e[m" >> .profile
SHELL ["/bin/bash", "-c", "\"source .profile\""]
