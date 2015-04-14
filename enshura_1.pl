#!/usr/bin/perl
use strict;
use warnings;

my $line = <STDIN>;
print $1 while $line =~ /(.).?/g;
