#!/bin/sh

gcc_version=11.1.0
gcc_dir=${HOME}/opt/gcc-${gcc_version}

llvm_version=12.x
llvm_dir=${HOME}/opt/llvm-${llvm_version}

__abort()
{
        cat <<EOF
***************
*** ABORTED ***
***************
An error occurred. Exiting...
EOF
        exit 1
}

# Set script to abort on any command that results an error status
trap '__abort' 0
set -e


cd ~/src/repos/llvm-project/
if [ -d "build"]; then
     rm -fr build
fi

cmake -S llvm -B build -G "Unix Makefiles" -DLLVM_DEFAULT_TARGET_TRIPLE='x86_64-pc-linux-gnu' -DLLVM_ENABLE_PROJECTS='clang;clang-tools-extra;libcxx;libcxxabi;libunwind;lldb;lld;polly;cross-project-tests' -DCMAKE_BUILD_TYPE=Release -DGCC_INSTALL_PREFIX=${gcc_dir} -DCMAKE_INSTALL_PREFIX=${llvm_dir}
