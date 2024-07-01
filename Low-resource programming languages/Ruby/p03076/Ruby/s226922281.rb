A = `dd`.split.map(&:to_i)
p A.permutation(A.size).map{ |as|
  (0...as.size-1).map{ |i| ((as[i]-1)/10 + 1) * 10 }.inject(:+) + as[-1]
}.min