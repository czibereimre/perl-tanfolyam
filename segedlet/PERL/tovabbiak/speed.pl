#!/usr/bin/perl

use strict;
use warnings;

($ARGV[0]) ? test($ARGV[0]) : exit 42;

sub test {
    my $count = shift;
    for(my $i=1; $i<=$count; $i++) {
	if (open my $fh, ">", "speed.txt") {
	    close $fh;
	}
    }
}
