n = gets.to_f
a, b, c, d, e = Array.new(5) { gets.to_i }

puts 4 + (n / [a, b, c, d, e].min).ceil