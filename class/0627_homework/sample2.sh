#!/bin/bash

if [ ! -e "hcm_main_transfusion" ]; then
  g++ -DCHECK_ANSWER -std=c++11 hcm.cxx matrix.cxx vector.cxx hcm_main_TransfusionRaw.cxx -o hcm_main_transfusion
fi

# g++ -DCHECK_ANSWER -std=c++11 hcm.cxx matrix.cxx vector.cxx hcm_main_TransfusionRaw.cxx -o hcm_main_transfusion
# ./hcm_main_transfusion


for i in `seq 0 0`
do
  ./hcm_main_transfusion
done

python sample.py
./remove_file.sh
