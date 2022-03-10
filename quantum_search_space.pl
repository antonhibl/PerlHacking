#!/usr/bin/perl

# Pragmas
use utf8;
use v5.10;
use warnings;
use diagnostics;
use Math::Trig;

# calculates roughly the amount of times you would need to examine a search space
# while using a quantum search algorithm on a space of N elements
sub search_space
{
    $PI = pi();
    $sqrtn = sqrt($_[0]);
    $rough_size = (($PI*$sqrtn)/4);
    return $rough_size;
}

print("enter the size of the search space N: ");
chomp($val = <STDIN>);
say '';
$val = &search_space($val);
say "the amount of times you would need to examine the search space is roughly $val times";