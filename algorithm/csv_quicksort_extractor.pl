#!/usr/bin/perl -w
use strict;

my($line);
my($size);

print "Size, Type, Time, Cores\n" ;
while($line=<>) {
    chomp $line;
    if($line =~/^Size: ([\d\.]*)$/) {
	$size = $1;
	next;
    } 
    if($line =~/^(.*) --([\d\.]*)-- quicksort.*: ([\d\.]*) sec.$/) {
	print "$size, \"$1\", $3, $2\n" ;
	next;
    } 
}
