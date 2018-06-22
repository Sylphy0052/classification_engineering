#!/bin/bash

gnuplot <<EOF
plot "< awk '{if(\$3>\$4){print \$1, \$2;}}' HCM-WineRaw.result_membership", "< awk '{if(\$4>\$3){print \$1, \$2;}}' HCM-WineRaw.result_membership"
set size ratio -1
set terminal pdf
set output "HCM-WineRaw.result_membership.pdf"
replot
set output
EOF
