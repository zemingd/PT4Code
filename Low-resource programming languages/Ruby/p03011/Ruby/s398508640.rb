p,q,r=tem=gets.chomp.split(" ").map{|s| s.to_i}
puts [p+q,q+r,r+p].min
