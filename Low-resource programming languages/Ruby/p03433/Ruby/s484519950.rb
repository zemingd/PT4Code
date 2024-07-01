x = gets.chomp.to_i
a = gets.chomp.to_i

num = x % 500
puts ( a - num ) > 0 ? :Yes : :No