#!/bin/bash

g++ -DCHECK_ANSWER -std=c++11 hcm.cxx matrix.cxx vector.cxx hcm_main_WineRaw.cxx -o hcm_main_wine
./hcm_main_wine