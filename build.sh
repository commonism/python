#!/bin/bash

make distclean

./configure \
	--prefix=/opt/python3 \
	--disable-shared \
	LINKFORSHARED="-Werror" \
	LDFLAGS="-static -static-libgcc" CPPFLAGS="-static" && \
make 2>&1 |tee make.log

