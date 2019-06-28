#!/bin/env perl

use strict;

use DBI;

my $database = 'training';
my $username = 'training';
my $password = 'training';


my $dsn = "DBI:mysql:database=$database";
my $dbh = DBI->connect($dsn, $username, $password);

$dbh->do("SET NAMES utf8");

my $sth = $dbh->prepare("SELECT * FROM pelda");


$sth->execute;

my $rownum = $sth->rows;
print "Sorok szama a tablaban: $rownum\n";

print "-- Tablatartalom fetchrow_array hivassal ----------------------------\n";
while (my @array = $sth->fetchrow_array) {
    print "$array[0]\t$array[1]\t$array[2]\t$array[3]\n";
}

$sth->execute;

print "-- Tablatartalom fetchrow_arrayref hivassal -------------------------\n";
while (my $array_ref = $sth->fetchrow_arrayref) {
    print "$array_ref->[0]\t$array_ref->[1]\t$array_ref->[2]\t$array_ref->[3]\n";
}

$sth->execute;

print "-- Tablatartalom fetchrow_hashref hivassal -------------------------\n";
while (my $hash_ref = $sth->fetchrow_hashref) {
    print "$hash_ref->{id}\t$hash_ref->{username}\t$hash_ref->{fullname}\t$hash_ref->{cardnumber}\n";
}

$sth->finish;

$dbh->disconnect;
