FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive
ARG userid
ARG groupid
ARG username

# Install required packages for building Debian
RUN apt-get update
RUN apt-get install -y repo git ssh make gcc libssl-dev liblz4-tool expect g++ patchelf chrpath gawk texinfo chrpath diffstat binfmt-support qemu-user-static live-build bison flex fakeroot cmake gcc-multilib g++-multilib unzip device-tree-compiler python-pip ncurses-dev python-pyelftools kmod zip mtools bc time rsync sudo locales

RUN groupadd -g $groupid $username && \
    useradd -m -u $userid -g $groupid $username && \
    echo "$username ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    echo $username >/root/username

RUN locale-gen en_US en_US.UTF-8
RUN dpkg-reconfigure locales

ENV HOME=/home/$username
ENV USER=$username
WORKDIR /source

ENTRYPOINT chroot --skip-chdir --userspec=$(cat /root/username):$(cat /root/username) / /bin/bash -i
