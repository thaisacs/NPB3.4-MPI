#!/bin/bash

mkdir -p results
cd results


for bench in lu cg ft; do
  for size in B C; do
    mkdir -p $bench.$size
    cd $bench.$size
    for threads in 1; do
      mkdir -p ${threads}node06
      cd ${threads}node06
      now=$(date +"%m-%d-%y-%T")
      mkdir -p $now
      cd $now
      /usr/bin/time -o results.time -p mpirun -n $threads ../../../../../bin/$bench.$size.x 1> results.out 2> results.err
      cd ../..
    done
    cd ..
  done
done

for bench in bt sp; do
  for size in B C; do
    mkdir -p $bench.$size
    cd $bench.$size
    for threads in 1; do
      mkdir -p ${threads}node06
      cd ${threads}node06
      now=$(date +"%m-%d-%y-%T")
      mkdir -p $now
      cd $now
      /usr/bin/time -o results.time -p mpirun -n $threads ../../../../../bin/$bench.$size.x 1> results.out 2> results.err
      cd ../..
    done
    cd ..
  done
done

