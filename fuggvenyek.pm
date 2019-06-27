package fuggvenyek;

require Exporter;

our $VERSION = '1.00';
our @ISA = ("Exporter");
our @EXPORT = qw(check_rendszam);

sub check_rendszam {
  my ( $rendszam ) = @_;

  if ($rendszam) {
    $rendszam =~ tr/a-z/A-Z/;
    $rendszam =~ s/[^A-Z0-9]//g;
    if (($rendszam =~ /^.{6}$/) && ($rendszam =~ /^[A-Z]+[0-9]+$/)) {
      return "$rendszam";
    }
  }
}


sub print_rendszam {
  my $rendszam = shift;
  ( $rendszam ) ? print "Érvényes rendszám: $rendszam\n" : print STDERR "Érvénytelen rendszám: $rendszam\n";
}

1;
