N = gets.to_i
H = gets.split.map(&:to_i)
h = H.slice_when{|a,b| a < b }
p(h.map(&:size).max - 1)
