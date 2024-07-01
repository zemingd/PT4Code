n = gets.to_i
a = gets.split.map(&:to_i)

puts a.inject(&:^).zero? ? :Yes : :No