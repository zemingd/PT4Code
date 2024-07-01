(D, N) = gets.split.map(&:to_i)
ret = 100 ** D * N
ret += 100 ** D if N == 100
puts ret