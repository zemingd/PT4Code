H,M = gets.chomp.split(' ').map{|n| n.to_i}
h,m = gets.chomp.split(' ').map{|n| n.to_i}

puts (H - h) * (M - m)