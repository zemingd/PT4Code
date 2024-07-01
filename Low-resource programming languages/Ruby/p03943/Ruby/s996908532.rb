cs = gets.split.map(&:to_i)
puts (cs.index(cs.inject(:+) / 2) ? "Yes" : "No")