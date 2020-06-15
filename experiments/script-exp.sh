#!/bin/bash

mkdir -p results

#for bench in lu cg ft; do
#  for size in B C; do
#	for threads in 2 4 8; do
#		 /usr/bin/time -o results/$bench-$size-TIME-$threads.out -p  mpirun -n $threads ../bin/$bench.$size.x 1> results/$bench-$size.$threads.out 2> results/$bench-$size.$threads.err
#	done
#  done
#done
#
#for bench in bt sp; do
#  for size in B C; do
#	for threads in 4; do
#		 /usr/bin/time -o results/$bench-$size-TIME-$threads.out -p  mpirun -n $threads ../bin/$bench.$size.x 1> results/$bench-$size.$threads.out 2> results/$bench-$size.$threads.err
#	done
#  done
#done

for bench in lu cg ft sp bt; do
  for size in B C; do
	  /usr/bin/time -o results/$bench-$size-TIME-S.out -p ../bin/$bench.$size.x 1> results/$bench-$size.S.out 2> results/$bench-$size.S.err
  done
done

#for bench in bt lu cg sp ft; do
#  for size in A B C; do
#	mkdir -p $bench.$size
#	cd $bench.$size
#	mkdir -p cluster.node06
#	cd cluster.node06
#	/usr/bin/time -o TIME.out -p ../../../../bin/$bench.$size.x 1> result.out 2> result.err
#	cd ../../
#  done
#done
