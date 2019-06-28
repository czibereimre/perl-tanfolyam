package osztaly;

use Data::Dumper;

my $nyugdijkorhatar = 65;

sub new {
  my ($this, @params) = @_;
  print "THIS: $this\n";
  print "PARAMS: ", join(",",@params, "\n");
  my $class = ref($this) || $this;
  print "CLASS: $class\n";
  my $self = {
    "vezeteknev" => @params[0],
    "keresztnev" => @params[1],
    "eletkor"     => @params[2]
  };
  return bless $self, $class;
}

sub print_self {
  my $self = shift;
  print "SELF: $self\n";
  print Dumper $self;
}

sub get_eletkor {
  my $self = shift;
  $self->{eletkor};
}

sub get_data {
  my ($self, $kif) = @_;
  $self->{$kif};
}


sub get_korhatar {
  my $self = shift;
  $nyugdijkorhatar;
}

sub set_korhatar {
  my ($self, $kh) = @_;
  $nyugdijkorhatar = $kh;
}

1;
