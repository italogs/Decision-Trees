#!/usr/bin/env bash
export PATH=/usr/bin:$PATH

cd Program
ls
rm dec-tree
make clean
make
cd ..

mytimestamp=`date "+%d-%m-%y-%H-%M-%S"`
INSTANCES=('p05.txt') 
mkdir -p Benchmarks/$mytimestamp/ 
for instance in "${INSTANCES[@]}" 
do 
    for seed in {1..5}
    do
        Program/dec-tree Datasets/$instance -t 300 -sizeRCL 3 -sol Solutions/$instance -seed $seed > Benchmarks/$mytimestamp/$instance-$seed.txt        
        cat Benchmarks/$mytimestamp/$instance-$seed.txt | grep "Final" >> Benchmarks/$mytimestamp/compiled-$instance.txt
    done
done



# mytimestamp=`date "+%d-%m-%y-%H-%M-%S"`
# INSTANCES=('p01.txt' 'p02.txt' 'p03.txt' 'p04.txt' 'p05.txt' 'p06.txt' 'p07.txt' 'p08.txt' 'p09.txt' 'p10.txt') 
# mkdir -p Benchmarks/$mytimestamp/ 
# for instance in "${INSTANCES[@]}" 
# do 
#     for seed in {1..5}
#     do
#         Program/dec-tree Datasets/$instance -t 300 -sizeRCL 10 -sol Solutions/$instance -seed $seed > Benchmarks/$mytimestamp/$instance-$seed.txt        
#         cat Benchmarks/$mytimestamp/$instance-$seed.txt | grep "Final" >> Benchmarks/$mytimestamp/compiled-$instance.txt
#     done
# done

# mytimestamp=`date "+%d-%m-%y-%H-%M-%S"`
# INSTANCES=('p01.txt' 'p02.txt' 'p03.txt' 'p04.txt' 'p05.txt' 'p06.txt' 'p07.txt' 'p08.txt' 'p09.txt' 'p10.txt') 
# mkdir -p Benchmarks/$mytimestamp/ 
# for instance in "${INSTANCES[@]}" 
# do 
#     for seed in {1..5}
#     do
#         Program/dec-tree Datasets/$instance -t 300 -sizeRCL 5 -sol Solutions/$instance -seed $seed > Benchmarks/$mytimestamp/$instance-$seed.txt        
#         cat Benchmarks/$mytimestamp/$instance-$seed.txt | grep "Final" >> Benchmarks/$mytimestamp/compiled-$instance.txt
#     done
# done


# mytimestamp=`date "+%d-%m-%y-%H-%M-%S"`
# INSTANCES=('p01.txt' 'p02.txt' 'p03.txt' 'p04.txt' 'p05.txt' 'p06.txt' 'p07.txt' 'p08.txt' 'p09.txt' 'p10.txt') 
# mkdir -p Benchmarks/$mytimestamp/ 
# for instance in "${INSTANCES[@]}" 
# do 
#     for seed in {1..5}
#     do
#         Program/dec-tree Datasets/$instance -t 300 -sizeRCL 3 -sol Solutions/$instance -seed $seed > Benchmarks/$mytimestamp/$instance-$seed.txt        
#         cat Benchmarks/$mytimestamp/$instance-$seed.txt | grep "Final" >> Benchmarks/$mytimestamp/compiled-$instance.txt
#     done
# done
