#!/bin/env perl

use strict;

use DBI;

my $database = 'training';
my $username = 'training';
my $password = 'training';

print "Kérem a keresendő kártyaszámot vagy felhasználót: ";
chomp ( my $query = <STDIN> );

my $dsn = "DBI:mysql:database=$database";
my $dbh = DBI->connect($dsn, $username, $password);

$dbh->do("SET NAMES utf8");

my $sth = $dbh->prepare("SELECT * FROM pelda WHERE cardnumber = ?");

$sth->execute($query);

while (my @array = $sth->fetchrow_array) {
    print "$array[0]\t$array[1]\t$array[2]\t$array[3]\n";
}

$sth->finish;

$dbh->disconnect;
