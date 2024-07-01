A, B, C = gets.split.map(&:to_i)

puts [A, B, C].max * 10 + [A, B, C].min(2).inject(:+)
