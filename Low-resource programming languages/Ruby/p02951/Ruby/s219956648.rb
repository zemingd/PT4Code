a,b,c=gets.chomp.split(' ').map{|n| n.to_i}
kq = c - (a-b) > 0 ?  c - (a-b) : 0
puts kq
