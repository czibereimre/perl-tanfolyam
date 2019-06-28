#!/bin/env perl

use strict;

use DBI;

my $database = 'training';
my $username = 'training';
my $password = 'training';

print "ID: ";
chomp (my $id = <STDIN>);

my $dsn = "DBI:mysql:database=$database";
my $dbh = DBI->connect($dsn, $username, $password);

my $sth = $dbh->prepare("DELETE FROM pelda WHERE id=?");
my $rv = $sth->execute($id);

$sth->finish;

$dbh->disconnect;
