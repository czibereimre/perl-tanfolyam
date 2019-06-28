#!/bin/env perl

use strict;

use DBI;

my $database = 'training';
my $username = 'training';
my $password = 'training';

print "Felhasználónév: ";
chomp (my $user_name = <STDIN>);

print "Teljes név: ";
chomp (my $full_name = <STDIN>);

print "Kártyaszám: ";
chomp (my $card_number = <STDIN>);



my $dsn = "DBI:mysql:database=$database";
my $dbh = DBI->connect($dsn, $username, $password);

#$dbh->do("SET NAMES utf8");

my $sth = $dbh->prepare("INSERT INTO pelda (username, fullname, cardnumber) VALUES (?,?,?)");
my $rv = $sth->execute($user_name, $full_name, $card_number);

$sth->finish;

$dbh->disconnect;
