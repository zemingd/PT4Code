a, b, c = gets.chomp.split(/\s/).map(&:to_i)

puts a < b && b < c ? "Yes" : "No"