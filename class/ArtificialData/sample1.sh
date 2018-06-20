#!/bin/bash

gnuplot <<EOF
plot "2d-Gaussian-2clusters.dat" every ::1
set size ratio -1
replot
set terminal pdf
set output "2d-Gaussian-2clusters.pdf"
replot
set output
EOF
