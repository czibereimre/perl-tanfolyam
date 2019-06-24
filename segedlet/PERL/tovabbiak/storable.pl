#!/usr/bin/perl

use strict;
use warnings;

use Storable;

my $file = 'storable.data';

store { tombref => [ 1, 2, 3, 4 ], hashref => { elso => 1, masodik => 2, harmadik => 3 }}, $file;

my $adat = retrieve($file);

print $adat->{hashref}->{masodik}, "\n";
