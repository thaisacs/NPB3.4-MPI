#!/bin/bash

mkdir -p results
cd results

for bench in cg ep is mg ft bt sp; do
  for size in A B; do
	/usr/bin/time -o $bench-$size-TIME.out -v mpirun -n 1 ../../bin/$bench.$size.x 1> $bench-$size.out 2> $bench-$size.err
  done
done
