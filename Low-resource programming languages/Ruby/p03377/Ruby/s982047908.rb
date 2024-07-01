#!ruby -pa
a,b,x=$F.map &:to_i
$_=a<=x&&x<=a+b ?"YES":"NO"
