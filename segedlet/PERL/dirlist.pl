#!/usr/bin/perl

( $ARGV[0] ) ? $dir = $ARGV[0] : die "Használat: $0 <könyvtár>\n";

die "A megadott könyvtár nem könyvtár ($dir)\n" if ! -d "$dir";


opendir DIR, "$dir" or die "Nem tudom megnyitni a könyvtárat\n";
@files = readdir DIR;
closedir DIR;

foreach $file (@files) {
    #print $dir . '/' . $file . "\n";
    print "$dir/$file ";
    print "(FÁJL)" if -f "$dir/$file";
    print "(KÖNYVTÁR)" if -d "$dir/$file";
    print "\n";
}
