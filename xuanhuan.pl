#!/usr/bin/perl -w
print"Please type the filename of the protein sequence data:";
$proteinfilename = <STDIN>;
#biao zhun shu ru
chomp $proteinfilename;
unless (open(PROTEINFILE,$proteinfilename)){
print"cannot open file\"'$proteinfilename\"\n";
}
@protein=<PROTEINFILE>;
close PROTEINFILE;
$protein=join('',@protein);
#ba shu zu bian cheng biao liang
$protein=~s/\s//g;
#qu chu kong wei zi fu 
do {
print"Enter a motif to search for:";
$motif=<STDIN>;
chomp$motif;
if($protein=~/$motif/){
print"I found it \n\n";
}
else{
print"I couldnot find it.\n\n";
}
}until ($motif=~/^\s*$/);
