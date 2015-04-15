#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);

my (@table,%select);
{
    # テーブル作成
    my $first_line = <STDIN>;
    my $row = (split(/\s+/,$first_line))[1];
    my $i=1;
    while (<STDIN>){
        my $j=1;
        for (split(/\s+/)){
            $table[$j][$i]=$_;
            $j++;
        }
        last if $i++ >= $row;
    }
}
while (<STDIN>){
    my ($c1,$r1,$c2,$r2) = split(/\s+/);
    while ($r1 <= $r2){
        my $i=$c1;
        while ($i <= $c2){
            $select{"$i,$r1"} = $table[$i][$r1];
            $i++;
        }
        $r1++;
    }
}
{
    # 合計算出
    my $sum;
    for (keys %select){
        my ($c,$r) = split(/,/);
        $sum += $select{"$c,$r"};
    }
    say $sum;
}
