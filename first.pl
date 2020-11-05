# Use of parenthesis isn't required. But it's need use (;) at end of instruction
print "Hello world";

# This is a single line comment

=begin
    Hi, this is a multiline comment
    until the =cut, the comment is valid
    so, i can write anything
=cut


$a = 10;
print 'The value is $a';  # Single quotes can't interpolate variables
print "\nThe value is $a\n";  # Only double quotes can interpolate especial character and variables


# You can use multiline string in this way
print "
    Hi there
    multiline text
    example
";


# Storing multiline text in a variable with "Here documents"
$text_multi = <<"EOF";
    This is a multiline text that will be storaged in variable
    You can use << operator and later set a indentifier to the multiline string
    And to end the string, use the indentifier that was defined
    Like in the line below
EOF
print "$text_multi\n";

$text_multi2 = <<"MULTI";
    Yes, the indentifier can by anything
    Work fine
MULTI
print("$text_multi2\n");


=begin variables format
    The perl can start a variable with $, % and @ with, letter, digits and underscores.
    Is a case sensitive language

    $a = 10;
    @b = 5;
    %c = 8;
=cut

$a = 10;
@b = 6;
%c = 8;
print "$a\n";
print "@b\n";
print %c;


=begin data types
    Scalar - Simples variables. Use Dollar sign ($). Can be a number, string or reference.

    Arrays - Ordered lists of scalar that start with 0. Use "At" sign (@)
        To access a index, use dolar sign ($) preceded of array name and later the index of array, like:

        @names = ("A", "B", "C", "D");
        print $names[2];

    Hashes - unorderes sets of key/value pair. Use percent sign (%). It's like dictionary in python
        To access a key in hashes, you use dolar sign ($) preceded of hashes name and later bracktes with the key name. Like:

        %persons = ("Gabriel", 10, "Francisco", 30, "Maria", 25, "Juliana", 40);
        print "The gabriel has $persons{'Gabriel'} years old\n";

    you can use the same name to differentes data types variables, so, this is valid:

    $name = "HI";
    @name = ("HI");
=cut

$pos = 2;
@numbers = (10, 20, 30, 40, 50);
print "\nThe value in index $pos is $numbers[$pos]\n";

%persons = ("Gabriel", 10, "Francisco", 30, "Maria", 25, "Juliana", 40);
print "The gabriel has $persons{'Gabriel'} years old\n";



# You can concat string using dot(.); For example:
$name = "John";
$surname = "Call";
$fullname = $name . " " . $surname;
print "$fullname\n";


# You can create a array with qw operator. Each space is a index in array
@array = qw\this is a array\;
$size = @array;  # return 4
print "The size of array is $size\n";


# Sequential Numbers array
@numbers = (10..100);  # dot dot (..) is the range operator
$count = @numbers;
print "The size of array is $count\n";


# Array size
@numbers = (10..100);
print "The size of array is " . scalar $count . "\n"; # Can use scalar context to get the size
$size = @numbers;  # get the size of array
$max_index = $#numbers;  # using the # operator get the max index of a array
print "The size of array is $size\n";
print "The max index is $max_index\n";


# Hashes creation

# first way
$data{"year"} = 2000;
$data{"name"} = "Test";
print $data{"year"} . "\n";

# second way
%person = ("name" => "Gabriel", "age" => 18);
print "$person{'name'}\n";

# third way
%person = (-name => "Gabriel", -age => 18);
print "$person{-name}\n";

#fourth way
%person = ("name", "Gabriel", "age", 18);
print "$person{'name'}\n";


# Getting keys from hash
@keys = keys %person;
@values = values %person;


# check if exists
if(exists($person{"name"})) {
    print("Exists\n");
}

# delete element from hash
delete $person{"name"};
if(exists($person{"name"})) {
    print("Exists");
} else {
    print("doesn't exists");
}