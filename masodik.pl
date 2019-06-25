#!/usr/bin/env perl


for (1..20) { next if ($_ == 13) ; print "$_\n" }

for (2..20) { next if ($_ % 2) ; print "$_\n" }
