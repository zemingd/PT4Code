S, T = readlines.map(&:chomp)

puts T[0 .. -2] == S ? 'Yes' : 'No'