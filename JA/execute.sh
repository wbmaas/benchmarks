#!/bin/bash

export OMP_PROC_BIND=close
export OMP_PLACES=cores

for nt in 2 4 8 12 16
	do
	echo "Running with $nt threads"
	export OMP_NUM_THREADS=$nt
	for iter in 1 2 3 
	do
		./omp_ja >> out/fft.$nt.txt
	done
done

