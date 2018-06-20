#/bin/bash

gnuplot <<EOF
plot "2d-Gaussian-2clusters.dat" every ::1, "HCM-2d-Gaussian-2clusters.result_centers"
set size ratio -1
set terminal pdf
set output "HCM-2d-Gaussian-2clusters.result_centers.pdf"
replot
set output
EOF
