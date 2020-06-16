#!/bin/bash

mkdir -p results
cd results

for bench in lu cg ft; do
  for size in B C; do
    mkdir -p $bench.$size
    cd $bench.$size
	  for threads in 1 2 4 8; do
      mkdir -p ${threads}node06
      cd ${threads}node06
	  	/usr/bin/time -o results.time -p mpirun -n $threads ../../../../bin/$bench.$size.x 1> results.out 2> results.err
      cd ..
	  done
    cd ..
  done
done

for bench in bt sp; do
  for size in B C; do
    mkdir -p $bench.$size
    cd $bench.$size
	  for threads in 1 4; do
      mkdir -p ${threads}node06
      cd ${threads}node06
	  	/usr/bin/time -o results.time -p mpirun -n $threads ../../../../bin/$bench.$size.x 1> results.out 2> results.err
      cd ..
	  done
    cd ..
  done
done
