S = gets.chars.map(&:to_i)
puts [S.size - S.count(1), S.count(1)].min * 2