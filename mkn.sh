#!/usr/bin/env bash
set -exu
CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" && cd $CWD

(
    cd $CWD
    mkn
    rm -rf build && mkdir build && cd build
    cmake -G Ninja -DCMAKE_BUILD_TYPE=Release \
        -DBUILD_EXAMPLES=OFF \
        -DCMAKE_INSTALL_PREFIX=$CWD ../f
    ninja && ninja install
)
