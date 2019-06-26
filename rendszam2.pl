#!/usr/bin/env perl

$rendszam = $ARGV[0];

if ($rendszam =~ /^$/) {
   print  'Használata:\n$0 "rendszám"'."\n";
} else {
  $rendszam =~ tr/a-z/A-Z/;
  $rendszam =~ s/[^A-Z0-9]//g;
  if (($rendszam =~ /^.{6}$/) && ($rendszam =~ /^[A-Z]+[0-9]+$/)) {
    print "$rendszam Helyes rendszám.\n";
  } else {
    print STDERR "$rendszam Helytelen rendszám!\n";
  }
}

