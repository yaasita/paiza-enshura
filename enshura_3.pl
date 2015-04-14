#!/usr/bin/perl
use strict;
use warnings;

my ($kukan, $koma) = split(/\s+/,<STDIN>);
my @line = <STDIN>;
my $critical = 0;
for ( my $i=0; $i <= $#line - $kukan + 1; $i++ ){
    my $total = $line[$i];
    $total += $line[$i + $_ - 1] for 2..$kukan;
    $critical = $total if $total > $critical;
}
print $critical;
