#!/usr/bin/perl
# vim: fdm=marker
use strict;
use warnings;
use feature qw(say);
use Test::More;
use FindBin;
chdir $FindBin::Bin;

subtest 'example1' => sub { #{{{
    my $result = `cat enkoi_1_ex1.dat | ../enkoi_1.pl`;
    is 0+$result,20;

}; #}}}
subtest 'example2' => sub { #{{{
    my $result = `cat enkoi_1_ex2.dat | ../enkoi_1.pl`;
    is 0+$result,135;
}; #}}}
done_testing;

