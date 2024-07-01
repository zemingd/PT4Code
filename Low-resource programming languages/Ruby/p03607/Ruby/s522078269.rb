n = gets.to_i
hash = Hash.new(0)
n.times { hash[gets.to_i] += 1 }
puts hash.values.count { |i| i.odd? }
