#!/bin/bash
latest="http://distfiles.gentoo.org/releases/amd64/autobuilds/latest-stage3.txt"
stage3_path=$(curl  $latest 2>&1 \
            | awk '/\/stage3-amd64-[0-9]+T[0-9]+Z.tar.xz/{print $1}')

wget  {{ mirror }}/releases/amd64/autobuilds/$stage3_path -O \
      stage3.xz
