
s=gets
r = s =~ /(.)\1/ ? "Bad" : "Good";
puts r
