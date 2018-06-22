#!/bin/bash

g++ -DCHECK_ANSWER -std=c++11 hcm.cxx matrix.cxx vector.cxx hcm_main_IrisRaw.cxx -o hcm_main_iris
./hcm_main_iris
