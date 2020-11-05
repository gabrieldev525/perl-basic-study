package Person;

sub new {
    my $class = shift;
    my $self = {
        _name => shift,
        _age => shift,
        _country => shift
    };

    bless $self, $class;
    return $self;
}

sub show {
    my ($self, $name, $age, $country) = @_;

    print "Name: " . $self->{_name} . "\n";
    print "Age: " . $self->{_age} . "\n";
    print "Country: " . $self->{_country} . "\n";
}
1;