#!/usr/bin/env bash

export PATH=/usr/bin:$PATH

cd Program
ls
rm dec-tree
make clean
make
cd ..


# INSTANCES=('p01.txt' 'p02.txt' 'p03.txt' 'p04.txt' 'p05.txt' 'p06.txt' 'p07.txt' 'p08.txt' 'p09.txt' 'p10.txt')
# INSTANCES=('p03.txt')

INSTANCES=('p05.txt')

for instance in "${INSTANCES[@]}" 
do 
    Program/dec-tree Datasets/$instance -depth 4 -t 600 -sizeRCL 3 -sol Solutions/$instance
done