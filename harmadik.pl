#!/usr/bin/env perl

print "Kezdo szam:"; chomp ($kezdo = <STDIN>);
print "Utolso szam:"; chomp ($utolso = <STDIN>);

($kezdo, $utolso) = ($utolso, $kezdo) if ($kezdo > $utolso);
for ($kezdo..$utolso) {  next if ($_ % 2) ;  print "$_\n" }

