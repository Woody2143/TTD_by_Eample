#!/usr/bin/env perl

use Modern::Perl;
use Test::More tests => 4;

use_ok('Franc');

my $five = new_ok( Franc => [ amount => 5 ], 'Franc');

is_deeply($five->times('2'), Franc->new( amount => 10 ), 'product->times(2) equals Franc obj 10');

is_deeply($five->times('3'), Franc->new( amount => 15 ), 'product->times(3) equals Franc obj 15');
