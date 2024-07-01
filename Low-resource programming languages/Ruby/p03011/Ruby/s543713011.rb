a = gets.to_s.split.map{|t|t.to_i}

s = a.reduce(0){|s,t|s+t}

puts a.map{|e|s-e}.min