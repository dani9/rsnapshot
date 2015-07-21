#!/bin/sh

# generate testsuite autoconf
CONFIG="t/include.ac"
echo > $CONFIG
echo '# this part is autogenerated by autogen.sh' >> $CONFIG
echo >> $CONFIG
find t/ -name '*.in' | sed 's/\.in$//g' | while read line; do
	echo "AC_CONFIG_FILES($line)" >> $CONFIG
done
echo >> $CONFIG
echo '# this part had been autogenerated by autogen.sh' >> $CONFIG

autoreconf -i