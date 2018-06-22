#/bin/bash

gnuplot <<EOF
plot "WineRaw.dat" every ::1, "HCM-WineRaw.result_centers"
set size ratio -1
set terminal pdf
set output "HCM-WineRaw.result_centers.pdf"
replot
set output
EOF
