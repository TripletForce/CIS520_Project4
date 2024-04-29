#!/bin/sh

for c in 1 2 4 8 16 20
do
    sbatch --time=1 --mem-per-cpu=512M --cpus-per-task=$c --ntasks=1 --nodes=1 ./run.sh
done
