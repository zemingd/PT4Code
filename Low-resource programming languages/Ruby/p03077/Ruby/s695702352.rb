N, *P = readlines.map(&:to_i)
puts (N / P.min.to_f).ceil + 4
