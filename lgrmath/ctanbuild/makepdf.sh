#!/bin/sh
dir="."

echo "Building pdf in ctanbuild/ ..."
cd $dir
latexmk -e "\$dvipdf = q/dvipdfmx %O -o %D %S/" -pdfdvi lgrmath.tex
cd ..
echo "... done"

# Local variables:
# coding: utf-8
# End: