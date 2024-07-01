n,m=gets.split.map(&:to_i)
p [[n-1, n-2], [n-1, m-1], [m-1, m-2]].map {|i| i.inject(:+)}.max