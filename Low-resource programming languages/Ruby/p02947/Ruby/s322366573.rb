n = gets.to_i
s = []
n.times { s << gets.chomp }

hash = Hash.new(0)
s.each { |sn| hash[sn.chars.sort.join] += 1 }

puts hash.values.map { |v| v * (v - 1) / 2 }.inject(:+)
