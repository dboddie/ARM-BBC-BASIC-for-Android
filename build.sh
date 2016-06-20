#!/bin/sh

SYSROOT=/home/build/Android/android-ndk-r9d/platforms/android-15/arch-arm

../asasm -From BASIC105.s basic.elf
arm-linux-androideabi-gcc -c -o main.o main.c --sysroot=$SYSROOT
arm-linux-androideabi-gcc -o basic main.o basic.elf --sysroot=$SYSROOT
