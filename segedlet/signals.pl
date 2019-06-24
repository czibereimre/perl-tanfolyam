#!/usr/bin/perl

$SIG{HUP} = 'hup_handler';
$SIG{INT} = 'int_handler';
$SIG{KILL} = 'kill_handler';
$SIG{TERM} = 'term_handler';

print "Program PID: $$\n";

while (1) {
    sleep 1;
}

sub hup_handler {
    print STDERR "HUP jelzés\n";
}

sub int_handler {
    print STDERR "INT jelzés\n";
}

sub kill_handler {
    print STDERR "KILL jelzés\n";
}

sub term_handler {
    print STDERR "TERM jelzés\n";
}
