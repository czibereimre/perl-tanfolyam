#!/usr/bin/env perl

use fuggvenyek; 

$rendszam = $ARGV[0];


unless ($rendszam) {
  print  'Használata:\n$0 "rendszám"'."\n";
  exit 1;
}

print_rendszam(check_rendszam($rendszam));

sub print_rendszam {
  my $rendszam = shift;
  ( $rendszam ) ? print "Érvényes rendszám: $rendszam\n" : print STDERR "Érvénytelen rendszám: $rendszam\n";
}

