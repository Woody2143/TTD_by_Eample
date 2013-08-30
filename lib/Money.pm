package Money;
use Moose;
use MooseX::Method::Signatures;
use MooseX::Privacy;

has 'amount' => (
       isa => 'Int',
        is => 'ro',
    traits => [qw/Protected/],
);

method equals (Money $object) {
    return 1 if (($self->amount == $object->amount) && (ref $self eq ref $object));
    return 0;
}

no Moose;
__PACKAGE__->meta->make_immutable;

1;
