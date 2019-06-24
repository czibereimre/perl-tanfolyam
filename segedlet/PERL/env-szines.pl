#!/usr/bin/perl

use Term::ANSIColor;

while (($key, $value) = each %ENV) {
    print color('bold red') . "$key: " . color('reset') . $value . "\n";
}
