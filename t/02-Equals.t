#!/usr/bin/env perl

use Modern::Perl;
use Test::More tests => 8;

use_ok('Money');
use_ok('Dollar');
use_ok('Franc');

{
    ok(Money->Dollar(5)->equals( Money->Dollar(5) ), 'Dollar - 5 equals 5');
    ok(! Money->Dollar(5)->equals( Money->Dollar(6) ), 'Dollar - 5 does not equal 6');
}

{
    ok(Money->Franc(5)->equals( Money->Franc(5) ), 'Franc - 5 equals 5');
    ok(! Money->Franc(5)->equals( Money->Franc(6) ), 'Franc - 5 does not equal 6');
}

{
    ok(! Money->Franc(5)->equals( Money->Dollar(5) ), 'Franc 5 does not equal Dollar 6');
}
