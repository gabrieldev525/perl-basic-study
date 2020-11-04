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
