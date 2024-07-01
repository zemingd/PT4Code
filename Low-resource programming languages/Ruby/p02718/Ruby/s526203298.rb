(N, M), As = readlines.map{|l| l.split.map(&:to_i)}

puts As.sort.reverse[M] >= As.inject(:+)/(4.0*M) ? 'Yes' : "No"