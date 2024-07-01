s = gets.chomp
n = s.to_i

puts n % s.split('').map(&:to_i).inject(:+) == 0 ? :Yes : :No