#!/usr/bin/perl
# vim: fdm=marker
use strict;
use warnings;
use feature qw(say);
use Test::More;
use FindBin;
chdir $FindBin::Bin;

subtest 'example1' => sub { #{{{
    my $result = `cat enkoi_3_ex1.dat | ../enkoi_3.pl`;
    is 0+$result,17;

}; #}}}
subtest 'example2' => sub { #{{{
    my $result = `cat enkoi_3_ex2.dat | ../enkoi_3.pl`;
    is 0+$result,924;
}; #}}}
done_testing;


