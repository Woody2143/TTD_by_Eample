package Dollar;
use Modern::Perl;
use Moose;
use MooseX::Method::Signatures;

extends 'Money';

method times (Int $multiplier) {
    return Dollar->new( amount => ($self->amount * $multiplier) );
}

no Moose;
__PACKAGE__->meta->make_immutable;

1;
