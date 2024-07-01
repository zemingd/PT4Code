A, B = gets.split.map(&:to_i)

puts (A..B).count { |n| s = n.to_s; s == s.reverse }
