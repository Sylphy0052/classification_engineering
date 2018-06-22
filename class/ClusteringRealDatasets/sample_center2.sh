#/bin/bash

gnuplot <<EOF
plot "BCWRaw.dat" every ::1, "HCM-BCWRaw.result_centers"
set size ratio -1
set terminal pdf
set output "HCM-BCWRaw.result_centers.pdf"
replot
set output
EOF
