#!/usr/bin/env perl


foreach $kulcs (sort keys %ENV) { 
  print "$kulcs = $ENV{$kulcs}\n";
 
}
