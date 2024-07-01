N,X = gets.chomp.split.map(&:to_i)
input = readlines(chomp: true).map(&:to_i)
donats = N + (X - input.sum) / input.min
p donats