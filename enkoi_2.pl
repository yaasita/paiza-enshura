#!/usr/bin/perl
use strict;
use warnings;

my $fist_line = <STDIN>;
my $total=0;
while (<STDIN>){
    my ($t,$s,$p) = split(/\s/);
    $total += ( $t - $s ) * $p if $t > $s;
}
print "$total\n";

