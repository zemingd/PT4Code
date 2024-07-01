N, K = gets.split.map &:to_i
A = gets.split.map &:to_i

a = A.group_by {|i| i}.map {|i, a| a.size }
puts N - a.sort.reverse[0, K].inject(&:+)
