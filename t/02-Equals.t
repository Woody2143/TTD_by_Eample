#!/usr/bin/env perl

use Modern::Perl;
use Test::More tests => 3;

use_ok('Dollar');

my $five = Dollar->new( amount => 5 );
ok(Dollar->new( amount => 5 )->equals(Dollar->new( amount => 5 )), '5 equals 5');
ok(! Dollar->new( amount => 5 )->equals(Dollar->new( amount => 6 )), '5 does not equal 6');

