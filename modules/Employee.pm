package Employee;
use Person;
use strict;

our @ISA = qw(Person);  # inherits from Person

# The DESTROY method is a desconstruct of class, is called when the class is destroyed
sub DESTROY {
    print "Employee::DESTROY called\n"
}