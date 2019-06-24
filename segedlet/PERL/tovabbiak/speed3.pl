#!/usr/bin/perl

use strict;
use warnings;

use Time::HiRes qw(tv_interval gettimeofday clock_gettime);

# print clock_gettime;

my $t0 = [gettimeofday];

($ARGV[0]) ? test($ARGV[0]) : exit 42;

my $t1 = [gettimeofday];
my $elapsed = tv_interval($t0, $t1);

print "Futás: ", $elapsed, "\n";

sub test {
    my $count = shift;
    for(my $i=1; $i<=$count; $i++) {
	if (open my $fh, ">", "speed.txt") {
	    close $fh;
	}
    }
}
