n,m=gets.split.map(&:to_i)
p [[n, n-1], [n-1, m-1], [m, m-1]].map {|i| i.inject(:+)}.max