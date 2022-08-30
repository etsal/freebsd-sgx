#!/bin/sh

BASEDIR=$PWD
INSTALLDIR="/opt/intel"

gmake -j16 all
gmake -j16 sdk_install_pkg
gmake -j16 psw_install_pkg

mkdir -p $INSTALLDIR
cd $INSTALLDIR; $BASEDIR/linux/installer/bin/sgx_linux_x64_sdk_2.2.100.45311.bin
cd $INSTALLDIR; $BASEDIR/linux/installer/bin/sgx_linux_x64_psw_2.2.100.45311.bin
cd $BASEDIR

