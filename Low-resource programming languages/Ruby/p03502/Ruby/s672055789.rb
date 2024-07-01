n = gets.chomp
d = n.split(//).map(&:to_i).inject :+
n = n.to_i
puts n % d == 0 ? :Yes : :No