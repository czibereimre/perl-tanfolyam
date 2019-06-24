#!/usr/bin/perl

print "Vezetéknév: ";
chomp ($vezeteknev = <STDIN>);

print "Keresztnév: ";
chomp ($keresztnev = <STDIN>);

open my $fh, ">>", "nevek.txt" or die "Nem lehet megnyitni a nevek.txt állományt\n";
(print $fh "$keresztnev, $vezeteknev\n") ? print "OK\n" : print STDERR "FAILED\n";
close $fh;
