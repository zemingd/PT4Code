N = gets.to_i
Xs = gets.split.map(&:to_i)

xs = Xs.sort
n = N / 2
Xs.each{|x| puts xs.index(x) < n ? xs[n] : xs[n - 1]}