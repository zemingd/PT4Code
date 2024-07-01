n = gets.chomp.split(' ').map(&:to_i).reduce(:+)
puts n < 22 ? 'win' : 'bust'