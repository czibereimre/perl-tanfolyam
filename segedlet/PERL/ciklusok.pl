#!/usr/bin/perl

print "FOR ciklussal:\n";
for (1..10) {
  print "$_\n";
}

print "Egy másik FOR ciklussal:\n";
print "$_\n" for (1..10);

print "WHILE ciklussal:\n";
while ($i < 10) {
  $i++;
  print "$i\n";
}

print "UNTIL ciklussal:\n";
$i=0;
until ($i >= 10) {
  $i++;
  print "$i\n";
}

print "DO WHILE ciklussal:\n";
$i=1;
do {
  print "$i\n";
  $i++;
} while ($i <= 10);

print "EGYÉB ?-):\n";
$i=1;
{
  last if ($i > 10);
  print "$i\n";
  $i++;
  redo;
}

