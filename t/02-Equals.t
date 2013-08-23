#!/usr/bin/env perl

use Modern::Perl;
use Test::More tests => 7;

use_ok('Dollar');
use_ok('Franc');

{
    ok(Dollar->new( amount => 5 )->equals(Dollar->new( amount => 5 )), 'Dollar - 5 equals 5');
    ok(! Dollar->new( amount => 5 )->equals(Dollar->new( amount => 6 )), 'Dollar - 5 does not equal 6');
}

{
    ok(Franc->new( amount => 5 )->equals(Franc->new( amount => 5 )), 'Franc - 5 equals 5');
    ok(! Franc->new( amount => 5 )->equals(Franc->new( amount => 6 )), 'Franc - 5 does not equal 6');
}

{
    ok(! Franc->new( amount => 5 )->equals(Dollar->new( amount => 5 )), 'Franc 5 does not equal Dollar 6');
}
