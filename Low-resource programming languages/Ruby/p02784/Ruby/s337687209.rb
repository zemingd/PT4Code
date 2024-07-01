H, N = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i).inject(:+)
puts H > A ? :No : :Yes