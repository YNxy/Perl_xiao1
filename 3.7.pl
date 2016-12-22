#!/usr/bin/perl -w
my $DNA='AGTACGATCGATGCATGCGCATCGATGCATGC';
srand(time|$$);
for (my $i=0;$i<20;++$i){
 print randomposition($DNA)," ";
}
print "\n";

exit;


sub randomposition{
    my($string)=@_;
    return int(rand(length($string)));
}
