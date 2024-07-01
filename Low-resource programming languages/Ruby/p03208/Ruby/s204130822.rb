N, K = gets.split.map(&:to_i)
Hs = readlines.map(&:to_i)

hs = Hs.sort
puts (0 ... N - K + 1).map{|i| hs[i + K - 1] - hs[i]}.min