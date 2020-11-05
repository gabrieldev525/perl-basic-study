# normal loops
$i = 0;
while($i < 10) {
    $i++;
    print "$i\n";
}


# until loops - execute the loop while the condition isn't true
$i = 0;
until($i > 10) {
    $i++;
    print "$i\n";
}

# label in loop
MAIN: for($i = 0; $i < 10; $i++) {
    $j = 0;
    FIRST: while($j < 10) {
        $j++;

        if ($j % 2 == 0) {
            next FIRST; # go to the next iterator with the named loop
        }

        $calc = $j * $i;
        print "$calc\n";
    }
}


# foreach
@list = (10, 20, 30, 40);
foreach $item(@list) {
    print "$item\n"
}

# continue - is executed before the condition of loop to be evaluated again
$a = 0;
while($a < 10) {
    print "$a\n";
} continue {
    $a++;
}