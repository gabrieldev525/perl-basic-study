# subroutes are functions in perl

sub sayHello {
    print "Hello\n";
}

sayHello();

# getting params from a function
sub sum {
    @nums = @_;
    $total = $nums[0] + $nums[1];

    print "total = $total\n";
}
sum(10, 50);


# gettings hashes from params
sub sayPersonName {
    # the my statement create a private variable in this scope.
    my (%person) = @_;

    $count = scalar keys %person;
    print "$count keys in hash\n";

    print "$person{'name'}\n";
}
%person = ("name" => "Gabriel", "age" => 18, "country" => "Brazil");
sayPersonName(%person);


=begin score variable in subroutines
    local: the local statement, create a lexical scope, that is,
    you can access it from another subroutine
    that is called inside of first subroutine scope,

    my: the my statement, create a variable private from subroutine, that is,
    only can be access from the subroutine that it was created

    state: The state statement is a type of private variable, but they maintain the state
    and don't get reinitialized from multiple subroutines calls
    example:
=cut
use feature 'state';

sub testScope {
    local ($num) = @_;
    my $string = "test";

    state $a = 0;
    $a++;

    printValues();
}
sub printValues {
    $sum = $num + 10;
    print "$sum\n";

    print "Funcion calls $a\n";

    print "String variable content: $string\n";
}
testScope(10);
testScope(20);
testScope(30);