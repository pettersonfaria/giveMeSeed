#!/bin/bash
temp="/tmp/tracker.txt"
origin="tracker.txt"
if [ -f $temp ]; then
  > $temp
fi
sed -i '/^$/D' $origin
for i in `sort -u $origin`; do
  echo $i >> $temp
  echo >> $temp
done

mv $temp $origin && gedit $origin &
