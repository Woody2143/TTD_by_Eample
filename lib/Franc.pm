package Franc;
use Moose;
use MooseX::Method::Signatures;
use MooseX::Privacy;

extends 'Money';

method times (Int $multiplier) {
    return Franc->new( amount => ($self->amount * ${multiplier}));
}

no Moose;
__PACKAGE__->meta->make_immutable;

1;
