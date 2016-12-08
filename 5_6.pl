#!/usr/bin/perl -w
print"Please type the filename of the DNA sequanence data:";
$DNA_filename=<STDIN>;
chomp $DNA_filename;
unless(-e $DNA_filename){
print"File\"$DNA_filename\"donot seem to exist!!\n";
}
unless(open(DNAFILE,$NDA_filename)){
print"cannot open file\"$NDA_filename\"\n\n";
exit;
}
@DNA=<DNAFILE>;
close DNAFILE;
$DNA=join('',@DNA);
$DNA=~s/\s//g;
$count_of_A=0;
$count_of_T=0;
$count_of_C=0;
$count_of_G=0;
$errors    =0;
for($position;$position<length$DNA;++$position){
$base=substr($DNA,$position,1);
    if($base eq 'A'){++$count_of_A;}
 elsif($base eq 'T'){++$count_of_T;}
 elsif($base eq 'C'){++$count_of_C;}
 elsif($base eq 'G'){++$count_of_G;}
  else{print"!!!!Error,I donot recognize this base:$base\n";++$errors;}
}
print"A=$count_of_A\n";
print"T=$count_of_T\n";
print"C=$count_of_C\n";
print"G=$count_of_G\n";
print"errors=$errors\n";
exit;

