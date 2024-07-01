(a,b,c)=gets.split()
[a,b,c].each {|x| x=x.to_i}
puts (a < b && b < c) ? "Yes" : "No"