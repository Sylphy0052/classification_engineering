#/bin/bash

gnuplot <<EOF
plot "2d-Gaussian-3clusters.dat" every ::1, "sFCM-Em3.000000-2d-Gaussian-3clusters.result_centers"
set size ratio -1
set terminal pdf
set output "sFCM-Em3.000000-2d-Gaussian-3clusters.result_centers.pdf"
replot
set output
EOF
