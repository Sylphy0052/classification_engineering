#!/bin/bash

g++ -DCHECK_ANSWER -std=c++11 hcm.cxx matrix.cxx vector.cxx hcm_main_BCWRaw.cxx -o hcm_main_bcw
# ./hcm_main_bcw

for i in `seq 0 9`
do
    ./hcm_main_bcw
done
