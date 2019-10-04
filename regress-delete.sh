#!/bin/sh

grep -l "^	regress/" */* > foo
for file in $( cat foo );
do
	if ( grep -v regress $file | grep -q "^	.*/.*$" ); then
		echo > /dev/null
	else
		echo $file
		rm $file
	fi
done
