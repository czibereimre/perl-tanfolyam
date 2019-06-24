#!/usr/bin/perl

use strict;
use warnings;

use Data::Dumper;

my $adat = {
    tombref => [ 1, 2, 3, 4, '5' ],
    hashref => { elso => 1, masodik => 2, harmadik => 3 }
};

print Dumper $adat;

