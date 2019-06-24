#!/usr/bin/perl

use strict;
use warnings;

felvitel();


sub felvitel {
    my $quit;
    my ($username, $password, $fullname, $created);
    print "Új felhasználó felvitele\n";
    until ($quit) {
	print "\nFelhasználónév...: ";
	chomp ($username = <STDIN>);
	print "Jelszó...........: ";
	chomp ($password = <STDIN>);
	print "Teljes név.......: ";
	chomp ($fullname = <STDIN>);
	$created = get_date();
	print "\n";
	if (open my $fh, ">>", 'adatbazis') {
	    print $fh "$username:$password:$fullname:$created\n";
	    close $fh;
	    print "A felhasználó felvitele sikeresen megtörtént!\n";
	} else {
	    print "A felhasználó felvitele során hiba történt!\n";
	}
	print "Szeretne újat létrehozni [Y/n]: ";
	chomp ($quit = <STDIN>);
	undef $quit if ($quit !~ /^[Nn]$/);
    }
}

sub get_date {
    local @_ = localtime;
    return sprintf "%4s%02s%02s%02s%02s%02s", $_[5] + 1900, $_[4] + 1, $_[3], @_[2,1,0];
}


















sub ascii_to_hex ($) {
    (my $str = shift) =~ s/(.|\n)/sprintf("%02lx", ord $1)/eg;
    return $str;
}

sub hex_to_ascii ($) {
    (my $str = shift) =~ s/([a-fA-F0-9]{2})/chr(hex $1)/eg;
    return $str;
}

