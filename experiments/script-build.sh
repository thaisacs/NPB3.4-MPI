#!/bin/bash

cd ..
mkdir -p bin
cd kernel_stats
make
cd ..

rm config/suite.def

for bench in bt ft cg lu sp; do
  for size in B C; do
	echo "$bench	$size" >> config/suite.def
  done
done

make suite
