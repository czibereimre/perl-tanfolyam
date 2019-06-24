#!/usr/bin/perl

use strict;

my $skalar = 'Hello';

print "Szubrutin előtt: $skalar\n";

pelda_1($skalar);

print "Szubrutin után (pelda_1): $skalar\n";

pelda_2($skalar);

print "Szubrutin után (pelda_2): $skalar\n";

sub pelda_1 {
    my ($skalar) = @_;
    $skalar = 'Szia';
}

sub pelda_2 {
    $_[0] = 'Szia';
}
