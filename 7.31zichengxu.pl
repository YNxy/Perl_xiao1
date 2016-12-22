sub randomposition{
    my($string)=@_;
    return int(rand(length($string)));
}
