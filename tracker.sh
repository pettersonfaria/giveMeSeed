#!/bin/bash
temp="/tmp/tracker.txt"
origin="tracker.txt"
> $temp
for i in `sort -u $origin`; do
  echo $i >> $temp
  echo >> $temp
done

mv $temp $origin && gedit $origin
