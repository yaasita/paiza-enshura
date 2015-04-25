#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);

my ($row, $column) = split(/\s+/,<DATA>);
my @column;
# 入力
while (<DATA>){
    s/2/0/g;
    my $i=0;
    for(split(/\s/)){
        $column[$i].=$_;
        $i++;
    }
}
# 1を詰める
for (@column){
    s/0//g;
    my $space = $column - length($_);
    $_ = ("0" x $space) . $_;
}
# 出力
my $i=1;
while ($column >= $i){
    my @out;
    for (@column){
        push (@out,substr($_,$i-1,1));
    }
    print "@out\n";
    $i++;
}

__DATA__
3 4
1 0 2
1 2 1
1 2 2
1 2 2
