L, R = gets.chomp.split(' ').map(&:to_i)
N = 2019
puts L.upto(R < L + N ? R : L + N).map { |n| n % N }.min(2).reduce(:*)