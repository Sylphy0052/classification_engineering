#!/bin/bash

g++ -DCLASSIFICATION_FUNCTION -DCHECK_ANSWER -std=c++11 hcm.cxx matrix.cxx vector.cxx hcm_main_2d-Gaussian-2clusters.cxx -o hcm_main
