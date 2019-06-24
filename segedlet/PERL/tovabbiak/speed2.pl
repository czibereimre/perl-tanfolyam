#!/usr/bin/perl

use strict;
use warnings;

use Benchmark qw(:hireswallclock);

my $t0 = new Benchmark;

($ARGV[0]) ? test($ARGV[0]) : exit 42;

my $t1 = new Benchmark;
my $td = timediff($t1, $t0);

print "Futás: ", timestr($td), "\n";

sub test {
    my $count = shift;
    for(my $i=1; $i<=$count; $i++) {
	if (open my $fh, ">", "speed.txt") {
	    close $fh;
	}
    }
}
