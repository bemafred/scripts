#!/bin/sh

triple=x86_64-pc-linux-gnu
CMAKE_C_COMPILER_TARGET=$triple
CMAKE_CXX_COMPILER_TARGET=$triple
cmake -S llvm -B build -G Ninja -DLLVM_ENABLE_PROJECTS='clang;clang-tools-extra;libcxx;libcxxabi;libunwind;lldb;lld;polly;cross-project-tests' -DCMAKE_BUILD_TYPE=Release