n = gets.to_s.to_i
a = gets.to_s.split.map{|i|i.to_i}

puts !a.uniq! ? "YES" : "NO"