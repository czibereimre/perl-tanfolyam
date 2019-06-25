#!/usr/bin/env perl

if ($ARGV[0] eq "") {
  print STDERR "Hianyzo parameter\n";
  exit 2;
}

( -e $ARGV[0] && opendir DIR,$ARGV[0] ) || die "Nincs ilyen konyvtar: $ARGV[0] \n" ;

while (readdir DIR) {
  print $_." is file\n" if ( -f "$ARGV[0]/$_" ) ;
  print $_." is directory\n" if ( -d "$ARGV[0]/$_" );
}

closedir DIR;

