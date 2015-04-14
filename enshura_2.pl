#!/usr/bin/perl
use strict;
use warnings;

my $first_line = <STDIN>;
my %sum;
while (<STDIN>){
    my $dow = ($.-1)%7;
    $dow = $dow == 0 ? 7 : $dow;
    $sum{$dow} += $_;
}
for (1..7){
    print $sum{$_},"\n";
}
