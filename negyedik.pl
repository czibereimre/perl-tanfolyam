#!/usr/bin/env perl

use warnings;
use datum (get_date);

print "Kezdo szam:"; chomp ($kezdo = <STDIN>);
print "Utolso szam:"; chomp ($utolso = <STDIN>);

open FH, ">>naplo.txt" || die "nem sikerult megnyitni a naplo-t";
print FH "Datum: ",get_date()," | Elso: ",$kezdo." Masodik: ".$utolso."\n";
close FH;
($kezdo, $utolso) = ($utolso, $kezdo) if ($kezdo > $utolso);
for ($kezdo..$utolso) {  next if ($_ % 2) ;  print "$_\n" }

