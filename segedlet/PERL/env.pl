#!/usr/bin/perl

while (($key, $value) = each %ENV) {
    print "$key: $value\n";
}
