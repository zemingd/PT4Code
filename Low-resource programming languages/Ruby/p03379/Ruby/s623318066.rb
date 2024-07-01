N = gets.to_i
Xs = gets.split.map(&:to_i)

xs = Xs.sort
m = xs[(N + 1)/2 - 1]
Xs.each{|x| puts x <=  m ? xs[(N + 1)/2] : m}