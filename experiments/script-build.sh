#!/bin/bash

cd ..
mkdir -p bin
cd kernel_stats
make
cd ..

rm config/suite.def

for bench in cg sp; do
  for size in A; do
	echo "$bench	$size" >> config/suite.def
  done
done

make suite
