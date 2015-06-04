#!/bin/bash
tmp=/tmp/$$
ERROR_EXIT () {
  echo "$1" >&2
  rm -f $tmp-*
  exit 1
}
#####################################
# TEST1
#####################################

echo 4 > $tmp-ans
./15745148 12 8 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

rm -f $tmp-*

#####################################
# TEST2
#####################################

echo 5 > $tmp-ans
./15745148 10 5 > $tmp-out || ERROR_EXIT "TEST2-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST2-2"

echo OK

exit 0

