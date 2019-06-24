package datum;

require Exporter;

our $VERSION = '1.0';
our @ISA = qw(Exporter);
our @EXPORT_OK = qw( get_date );

sub get_date {
 my ($masodperc, $perc, $ora, $nap, $honap, $ev) = localtime;
 return sprintf("%04s.%02s.%02s %02s:%02s:%02s", $ev + 1900, $honap + 1, $nap, $ora, $perc, $masodperc);
}

1;
