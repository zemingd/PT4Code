n = gets.chomp.to_i

puts (1..(n - 1)).to_a.inject(0) { |sum, a| sum + a }