(a, b) = gets.chomp.split(' ').map(&:to_i)

puts ((a + b).to_f / 2.0).ceil.to_s