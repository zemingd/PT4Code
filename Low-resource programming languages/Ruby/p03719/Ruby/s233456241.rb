A, B, C = gets.chop.split.map(&:to_i)

puts (A <= C && C <= B) ? 'Yes' : 'No'