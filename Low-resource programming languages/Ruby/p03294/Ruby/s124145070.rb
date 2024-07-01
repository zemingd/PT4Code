N, *A = $<.read.split.map(&:to_i)
p A.inject(:+)-N
