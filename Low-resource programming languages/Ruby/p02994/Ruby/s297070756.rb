N, L = gets.chomp.split(' ').map(&:to_i)
a = L.upto(L+N-1).to_a
eat_abs = a.map(&:abs).min
eat = a.select { |n| n.abs == eat_abs }.first
puts a.reject { |n| n == eat }.reduce(:+)