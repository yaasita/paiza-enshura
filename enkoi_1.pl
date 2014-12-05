#!/usr/bin/perl
use strict;
use warnings;

my $fist_line = <STDIN>;
my $total;
while (<STDIN>){
    $total+=$_;
}
print "$total\n";
