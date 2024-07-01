N = gets.to_i
P = gets.split.map &:to_i

min = 1.0/0
p (1..P.size).select{|_i|
  i = _i - 1
  min = [min, P[i]].min
  P[i] <= min
}.size