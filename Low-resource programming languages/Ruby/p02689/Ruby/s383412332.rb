N,M = gets.split.map(&:to_i)
H = [0] + gets.split.map(&:to_i)
path = Hash.new{|h,k| h[k] = Array.new}
M.times{a,b = gets.split.map(&:to_i); path[a] << b; path[b] << a}

puts (1..N).count{|i| path[i] == [] || path[i].all?{|j| H[i] > H[j]}}