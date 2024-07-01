n = gets.to_i
s = []
n.times { s << gets.chomp }

hash = Hash.new(0)
s.each { |sn| hash[sn.chars.sort.join] += 1 }

pp hash.values.map { |n| n * (n - 1) / 2 }.inject(:+)
