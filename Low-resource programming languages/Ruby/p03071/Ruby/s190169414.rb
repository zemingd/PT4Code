A, B = gets.chomp.split(" ").map(&:to_i)

puts 2 * [A, B].max - (A == B ? 0 : 1)
