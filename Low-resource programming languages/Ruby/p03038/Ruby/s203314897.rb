N, M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).map { |n| [1, n] }
M.times { a << gets.split.map(&:to_i) }
a.sort_by!(&:last)
puts(a.flat_map { |n| [n[1]] * n[0] }.last(N).inject(:+))
