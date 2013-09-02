#!/usr/bin/env perl

use Modern::Perl;
use Test::More tests => 9;

use_ok('Money');
use_ok('Dollar');

{
    my $five = new_ok( Dollar => [ amount => 5 ], 'Dollar');
    
    is_deeply($five->times(2), Money->Dollar(10), 'product->times(2) equals Dollar obj 10');
    
    is_deeply($five->times(3), Money->Dollar(15), 'product->times(3) equals Dollar obj 15');
}

use_ok('Franc');
{
    my $five = new_ok( Franc => [ amount => 5 ], 'Franc');
    
    is_deeply($five->times(2), Franc->new( amount => 10 ), 'product->times(2) equals Franc obj 10');
    
    is_deeply($five->times(3), Franc->new( amount => 15 ), 'product->times(3) equals Franc obj 15');
}
