n,a = readlines.map(&:chomp).map(&:to_i)
puts n%500 <= a ? 'Yes' : 'No'