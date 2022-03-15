#!/usr/bin/perl

# Pragmas
use utf8;
use v5.10;
use warnings;
use diagnostics;
use Math::Trig;

# quantum search space size calculation
sub quantum_search_space
{
    $PI = pi();
    $sqrtn = sqrt($_[0]);
    $rough_size = (($PI*$sqrtn)/4);
    return $rough_size;
}

# quantum search space size calculation
sub search_space
{
	$num = log($_[0]);
	$denom = log(2);
	return $num/$denom;
}

print("enter the size of the search space N: ");
chomp($val = <STDIN>);
say '';
$quantum_search = &quantum_search_space($val);
$standard_search = &search_space($val);
say "the amount of times you would need to examine the search space\n
using a quantum algorithm is roughly $quantum_search times\n";
say "the amount of times you would need to examine the search space\n
using a classical algorithm is roughly $standard_search times\n\n";

if($standard_search < $quantum_search)
{
	say "a classical algorithm would be faster";
} else {
	say "a quantum algorithm would be faster";
}

