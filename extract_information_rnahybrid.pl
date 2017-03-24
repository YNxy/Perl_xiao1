# This a program used to extrac inforamtion including mfe and P-value from RNAhybrid results 
# Usage: perl extract_information_rnahybrid.pl *****.txt

my@input='';
my$line='';


# Open the input_file

open (IN, "<$ARGV[0]");
@input=<IN>;
print "Target;mfe;p-value\n";
foreach my $line (@input) {
# Extract the information that we want
    if ($line =~ /target: (.+)$/) {
        print "$1;";
    }

    if ($line=~/mfe: (.+)$/) {
        print "$1;";
    }

    if ($line=~/p-value: (.+)$/) {
        print "$1\n";
    }
}
exit;

