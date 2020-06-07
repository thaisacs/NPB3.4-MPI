#!/bin/bash

cd ..
mkdir -p bin
cd kernel_stats
make
cd ..

rm config/suite.def

for bench in cg ep is mg ft bt sp lu; do
  for size in A B C D E; do
	echo "$bench	$size" >> config/suite.def
  done
done

make suite
