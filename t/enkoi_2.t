#!/usr/bin/perl
# vim: fdm=marker
use strict;
use warnings;
use feature qw(say);
use Test::More;
use FindBin;
chdir $FindBin::Bin;

subtest 'example1' => sub { #{{{
    my $result = `cat enkoi_2_ex1.dat | ../enkoi_2.pl`;
    is 0+$result,1700;

}; #}}}
subtest 'example2' => sub { #{{{
    my $result = `cat enkoi_2_ex2.dat | ../enkoi_2.pl`;
    is 0+$result,30511;
}; #}}}
done_testing;


