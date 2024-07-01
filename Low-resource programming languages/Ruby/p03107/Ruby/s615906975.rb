S = gets.chomp
N = S.length
zeros = S.count("0")
ones = N - zeros

puts N - (zeros - ones).abs