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

sub Dollar {
    my $self = shift;
    my ($amount) = @_;
    use Dollar;
    #require Dollar;
    return Dollar->new( amount => $amount );
}

sub Franc {
    my $self = shift;
    my ($amount) = @_;
    #use Franc;
    require Franc;
    return Franc->new( amount => $amount );
}

no Moose;
__PACKAGE__->meta->make_immutable;

1;
