='ATCG';
$RNA=$DNA;
$RNA=~s/T/U/gi;
$revcom=reverse $DNA;
$revcom=~tr/ATCG/TAGC/;
print $DNA,"\n";
print $RNA,"\n";
print $revcom,"\n";

