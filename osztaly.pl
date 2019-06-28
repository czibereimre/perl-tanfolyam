#!/usr/bin/env perl

#use warnings;
use osztaly;

my $objektum = osztaly->new("Teszt","Elek",53);
#$objektum->print_self();

#print $objektum->get_eletkor, "\n";

print "vezetéknév: ",$objektum->get_data("vezeteknev"),"\n";
print "keresztnév: ",$objektum->get_data("keresztnev"),"\n";
print "életkor: ",$objektum->get_data("eletkor"),"\n";
print "nyugdijkorhatar: ",$objektum->get_korhatar,"\n";
$objektum->set_korhatar(70);

my $objektum2 = osztaly->new("Teszt","Elekné",42);
print "keresztnév: ",$objektum2->get_data("keresztnev"),"\n";
print "nyugdijkorhatar: ",$objektum2->get_korhatar,"\n";
