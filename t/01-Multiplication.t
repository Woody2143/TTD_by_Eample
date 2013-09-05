#!/usr/bin/env perl

use Modern::Perl;
use Test::More;

require Money;
require Dollar;
require Franc;

subtest 'Dollar subtest' => sub {

    my $five = new_ok( Dollar => [ amount => 5 ], 'Dollar');
    note(explain $five); 

    is_deeply($five->times(2), Money->Dollar(10), 'product->times(2) equals Dollar obj 10');
    
    is_deeply($five->times(3), Money->Dollar(15), 'product->times(3) equals Dollar obj 15');
};

subtest 'Franc subtest' => sub {

    my $five = new_ok( Franc => [ amount => 5 ], 'Franc');
    note(explain $five); 

    is_deeply($five->times(2), Money->Franc(10 ), 'product->times(2) equals Franc obj 10');
    
    is_deeply($five->times(3), Money->Franc(15), 'product->times(3) equals Franc obj 15');
};

done_testing();
