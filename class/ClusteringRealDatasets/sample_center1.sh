#/bin/bash

gnuplot <<EOF
plot "IrisRaw.dat" every ::1, "HCM-IrisRaw.result_centers"
set size ratio -1
set terminal pdf
set output "HCM-IrisRaw.result_centers.pdf"
replot
set output
EOF
