#!/bin/bash

g++ -DCLASSIFICATION_FUNCTION -DCHECK_ANSWER -std=c++11 sfcm.cxx hcm.cxx matrix.cxx vector.cxx sfcm_main_2d-Gaussian-2clusters.cxx -o sfcm
./sfcm
