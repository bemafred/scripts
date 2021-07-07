#!/bin/sh

cmake -S llvm -B build -G Ninja -DLLVM_DEFAULT_TARGET_TRIPLE='x86_64-pc-linux-gnu' -DLLVM_ENABLE_PROJECTS='clang;clang-tools-extra;libcxx;libcxxabi;libunwind;lldb;lld;polly;cross-project-tests' -DCMAKE_BUILD_TYPE=Release