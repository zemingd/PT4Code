C = readlines.map(&:chomp)

puts (0 ... 3).map{|i| C[i][i]}.join