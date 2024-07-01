t = gets.chomp.split.map &:to_i
k = gets.chomp.to_i
puts t.inject(:+) - t.max + t.max*2**k