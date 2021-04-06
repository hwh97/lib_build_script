#!/bin/bash
# build脚本文件路径
# cd /**/build_so/android
rm -rf ./build
# 打包平台
a="armeabi-v7a arm64-v8a x86 x86_64"
for abi in $a;
do
export ABI=$abi
sh cmd/android.sh
done
