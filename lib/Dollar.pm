package Dollar;
use Moose;
use MooseX::Method::Signatures;
use MooseX::Privacy;

has 'amount' => (
       isa => 'Int',
        is => 'ro',
    traits => [qw/Private/],
);

method times (Int $multiplier) {
    return Dollar->new( amount => ($self->amount * ${multiplier}));
}

method equals (Dollar $object) {
    return 1 if $self->amount == ${object}->amount;
    return 0;
}

no Moose;
__PACKAGE__->meta->make_immutable;

1;