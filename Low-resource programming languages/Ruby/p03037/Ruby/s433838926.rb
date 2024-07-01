N, M = gets.split.map(&:to_i)
L, R = [], []
M.times{l, r = gets.split.map(&:to_i); L << l; R << r}
p [0, R.min - L.max + 1].max