#!/bin/bash

if [ ! -e "hcm_main_banknote" ]; then
  g++ -DCHECK_ANSWER -std=c++11 hcm.cxx matrix.cxx vector.cxx hcm_main_BanknoteRaw.cxx -o hcm_main_banknote
fi

for i in `seq 0 0`
do
  ./hcm_main_banknote
done

python sample.py
