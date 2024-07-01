N = gets.to_i
A = gets.split.map(&:to_i)
s = 0
S = A.map{ |a| s += a; s }
p (0...N-1).map{ |i|
  (S[i] - (S[-1] - S[i])).abs
}.min