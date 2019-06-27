package osztaly;

sub new {
  my $this = shift;
  print "THIS: $this\n";
  my $class = ref($this) || $this;
  print "CLASS: $class\n";
  return bless {}, $class;
}

sub print_self {
  my $self = shift;
  print "SELF: $self\n";
}

1;
