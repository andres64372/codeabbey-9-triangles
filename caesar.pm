use strict;
use warnings;

open (IN, "input.txt");
my (undef, $k) = split (/\s+/, <IN>);
my @output = ();
while (my $input = <IN>) {
    chomp ($input);
    my $output = "";
    for (my $i = 0; $i < length ($input); $i++) {
        my $c = substr($input,$i,1);
        if ($c =~ /[A-Z]/) {
            $c = chr ((ord ($c) - ord ("A") - $k) % 26 + ord ("A"));
        }
        $output .= $c;
    }
    push (@output, $output);
}
close (IN);

open (OUT, ">output.txt");
print OUT join (" ", @output);
close (OUT);
