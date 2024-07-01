use v5.18; # strict say state
use warnings;
use List::Util qw(reduce first max min sum0);

chomp (my $n = <STDIN>);
chomp (my @a = split / /, <STDIN>);
my $gcd = sub {
  my ($x, $y) = @_;
  while ($y) {
    my $r = $x % $y;
    $r += $y if $r < 0;
    $x = $y;
    $y = $r;
  }
  return $x;
};
my $ans = $a[0];
for my $i (1..$n-1) {
  $ans = $gcd->($ans, $a[$i]);
}
say $ans;