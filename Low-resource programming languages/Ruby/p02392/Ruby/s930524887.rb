a,b,c=gets.split(" ").map{|i| i.to_i}
puts"Yes" if a<b && b<c
puts"No" if !(a<b && b<c)

