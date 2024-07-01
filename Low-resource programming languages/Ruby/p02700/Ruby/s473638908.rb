A, B, C, D = gets.split.map(&:to_i)

puts (C/B.to_f).ceil <= (A/D.to_f).ceil ? 'Yes' : 'No'