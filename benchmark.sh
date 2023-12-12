#!/usr/bin/env bash

WORK='r -c r'
SECONDS=0
module load conda3/202311
conda create -n mytest1 $WORK > conda.out 2> conda.err duration=$SECONDS
echo "conda3/202311 took $(($duration / 60)) minutes and $(($duration % 60)) seconds"

module purge
SECONDS=0
module load conda3/202303
conda create -n mytest2 $WORK > conda.out 2> conda.err
duration=$SECONDS
echo "conda3/202303 took $(($duration / 60)) minutes and $(($duration % 60)) seconds"

