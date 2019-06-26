#!/usr/bin/env perl

$rendszam = $ARGV[0];

#if ($rendszam =~ /^$/) {
#   print  'Használata:\n$0 "rendszám"'."\n";
#} else {
#  $rendszam =~ tr/a-z/A-Z/;
#  $rendszam =~ s/[^A-Z0-9]//g;
#  if (($rendszam =~ /^.{6}$/) && ($rendszam =~ /^[A-Z]+[0-9]+$/)) {
#    print "$rendszam Helyes rendszám.\n";
#  } else {
#    print STDERR "$rendszam Helytelen rendszám!\n";
#  }
#}

#(($rendszam =~ /^$/) && ( print  "Használata:\n$0 ".'"rendszám"'."\n")) || ( ( (($rendszam =~ tr/a-z/A-Z/) || true )  && (($rendszam =~ s/[^A-Z0-9]//g) || true) )  &&  ((($rendszam =~ /^.{6}$/) && ($rendszam =~ /^[A-Z]+[0-9]+$/) && (print "$rendszam Helyes rendszám.\n")) || (print STDERR "$rendszam Helytelen rendszám!\n")));


unless ($rendszam) {
  print  'Használata:\n$0 "rendszám"'."\n";
  exit 1;
}

print_rendszam(check_rendszam($rendszam));

sub check_rendszam {
  my ( $rendszam ) = @_;

  if ($rendszam) {
    $rendszam =~ tr/a-z/A-Z/;
    $rendszam =~ s/[^A-Z0-9]//g;
    if (($rendszam =~ /^.{6}$/) && ($rendszam =~ /^[A-Z]+[0-9]+$/)) {
      return "$rendszam";
    }
  }
}


sub print_rendszam {
  my $rendszam = shift;
  ( $rendszam ) ? print "Érvényes rendszám: $rendszam\n" : print STDERR "Érvénytelen rendszám: $rendszam\n";
}
