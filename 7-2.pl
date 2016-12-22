#!/usr/bin/perl -w
use strict;
use warnings;
my $DNA='AAAAAAAAAAAAA';
my $i;
my $mutant;
srand (time|$$);
$mutant=mutate($DNA);
print("this is the original DNA:\n\n");
print("$DNA\n");

print("this is the mutant DNA:\n\n");
print("$mutant\n");

for($i=0;$i<10;++$i){
   $mutant=mutate($mutant);
   print("$mutant\n");
}
exit;


sub mutate{
    my ($DNA)=@_;
    my (@n)=('A','C','G','T');
    my ($position)=randomposition($DNA);
    my ($newbase)=randomnucleotide(@n);
    substr ($DNA,$position,1,$newbase);
    return $DNA;
}
sub randomelement{
    my(@array)=@_;
    return $array[rand @array];
}
sub randomnucleotide{
    my (@n)=('A','T','G','C');
    return randomelement(@n);
}
sub randomposition{
    my($string)=@_;
    return int rand length$string;
}
