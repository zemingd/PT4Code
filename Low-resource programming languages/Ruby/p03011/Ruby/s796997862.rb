array = gets.chomp.split(" ").map(&:to_i)

puts array.inject(&:+) - array.max