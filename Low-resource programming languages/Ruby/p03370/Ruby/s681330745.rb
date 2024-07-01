
N, X = gets.split.map(&:to_i)
D = N.times.map{gets.to_i}
a = D.min
S = D.inject(0,&:+)
puts N + (X - S) / a

