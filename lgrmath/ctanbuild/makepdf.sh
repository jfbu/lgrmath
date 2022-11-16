#!/bin/sh
dir="."

echo "Building pdf in ctanbuild/ ..."
cd $dir
etex lgrmath.dtx
latexmk -e "\$dvipdf = q/dvipdfmx %O -o %D %S/" -pdfdvi lgrmath.tex
command -v xattr 2> /dev/null && xattr -c lgrmath.pdf
cd ..
echo "... done"

# Local variables:
# coding: utf-8
# End:
