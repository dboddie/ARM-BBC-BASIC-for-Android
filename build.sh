#!/bin/sh

# Change the following line to point to the correct location of the cross-
# building toolchain on your system.
SYSROOT=/home/build/Android/android-ndk-r9d/platforms/android-15/arch-arm
# Change the following line to point to the location of the asasm binary.
# See http://www.riscos.info/index.php/Using_GCCSDK for details of how to
# build the toolchain that contains it.
ASASM=../asasm

$ASASM -From BASIC105.s basic.elf
arm-linux-androideabi-gcc -c -o main.o main.c --sysroot=$SYSROOT
arm-linux-androideabi-gcc -o basic main.o basic.elf --sysroot=$SYSROOT
