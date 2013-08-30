#!/usr/bin/env perl

use Modern::Perl;
use Test::More tests => 6;

use_ok('Money');
use_ok('Dollar');

{
    
    my $five = Money->dollar(5);
    is($five->amount, 5, '$five->amount equals 5');
    isa_ok($five, 'Dollar');
    
    is_deeply($five->times(2), Dollar->new( amount => 10 ), 'product->times(2) equals Dollar obj 10');
    
    is_deeply($five->times(3), Dollar->new( amount => 15 ), 'product->times(3) equals Dollar obj 15');
}
