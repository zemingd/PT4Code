n,l = gets.split.map{|e| e.to_i}

s = []
n.times{ s << gets.chomp }

puts s.sort.inject{|a,b| a + b}