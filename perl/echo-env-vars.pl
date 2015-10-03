use warnings;
use strict;

print "Content-Type: text/plain; charset=UTF-8\r\n\r\n";

for my $key (keys %ENV) {

  my $val = $ENV{$key};
  $val =~ s/\n/<CR>/g;
  printf "%-30s: %s\n", $key, $val;
}
