#!/usr/bin/env perl

$rendszam = $ARGV[0];

if ($rendszam =~ /^$/) {
   print  "Használata:\n$0 rendszám\n";
} else {
  if ($rendszam =~ /^[a-zA-Z][a-zA-Z0-9]{4}[0-9]$/) {
    print "Helyes rendszám.\n";
  } else {
    print STDERR "Helytelen rendszám!\n";
  }
}

