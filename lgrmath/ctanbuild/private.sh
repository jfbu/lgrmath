#!/bin/sh
aaa="çois Bu"
dir="."
bubu="çois B\."
bbb="rn"
ccc="ol"
jfbu="${aaa}${bbb}${ccc}"

echo "Blowing up privacy cover in README lgrmath.dtx ..."
sed -i "s/$bubu/$jfbu/g" "$dir/README"
sed -i "s/$bubu/$jfbu/g" "$dir/lgrmath.dtx"
echo "... done"

# Local variables:
# coding: utf-8
# End:
