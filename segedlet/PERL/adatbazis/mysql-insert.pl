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



my $dsn = "DBI:mysql:database=$database";
my $dbh = DBI->connect($dsn, $username, $password);

#$dbh->do("SET NAMES utf8");

my $sth = $dbh->prepare("INSERT INTO pelda (username, fullname) VALUES (?,?)");
my $rv = $sth->execute($user_name, $full_name);

$sth->finish;

$dbh->disconnect;
