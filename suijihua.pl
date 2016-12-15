#!/usr/bin/perl -w
use strict;
my $count;
my $input;
my $sentence;
my $story;
my @nouns=('Dad','Mom','I','Joe','The dog');
my @verbs=('ran to','jumped with','giggled with','song stupid songs with');
my @prepositions=('at the store','over the beach','in a dream');
srand (time | $$);
do{
  $story='';
  for ($count=0;$count<=5;$count++){
  $sentence=
  $nouns[int(rand (scalar @nouns))]." "
 .$verbs[int(rand (scalar @verbs))]." "
 .$nouns[int(rand (scalar @nouns))]." "
 .$prepositions[int (rand (scalar @prepositions))].'.';
  
  $story .=$sentence;
}
  print "\n",$story,"\n";
  print "\nType \"quit\" to quit,or press Enter to continue";
  $input=<STDIN>;
} until($input=~/^\s*q/i);
exit;
