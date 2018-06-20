#!/bin/bash

gnuplot <<EOF
plot "< awk '{if($3>$4){print $1, $2;}}' sFCM-Em2.000000-2d-Gaussian-2clusters.result_membership", "< awk '{if($4>$3){print $1, $2;}}' sFCM-Em2.000000-2d-Gaussian-2clusters.result_membership"
set size ratio -1
set terminal pdf
set output "sFCM-Em2.000000-2d-Gaussian-2clusters.result_membership.pdf"
replot
set output
EOF
