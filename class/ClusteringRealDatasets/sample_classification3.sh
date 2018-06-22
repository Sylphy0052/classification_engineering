#!/bin/bash

gnuplot << EOF
splot "HCM-WineRaw.result_classificationFunction" using 1:2:3 with lines, "HCM-WineRaw.result_classificationFunction" using 1:2:4 with lines, "< awk '{if(\$3>\$4){print \$1, \$2, 0;}}' HCM-WineRaw.result_membership", "< awk '{if(\$4>\$3){print \$1, \$2, 0;}}' HCM-WineRaw.result_membership"
set hidden3d
replot
set ticslevel 0
set key outside center bottom
set terminal pdf
set output "HCM-WineRaw.result_classificationFunction.pdf"
replot
set output
EOF
