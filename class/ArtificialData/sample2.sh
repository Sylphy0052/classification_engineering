#!/bin/bash

g++ -std=c++11 randGaussianMain.cxx -o randGaussianMain
./randGaussianMain > randGaussian.dat

gnuplot <<EOF
plot "randGaussian.dat" every ::1
set size ratio -1
replot
set terminal pdf
set output "randGaussian.pdf"
replot
set output
EOF
