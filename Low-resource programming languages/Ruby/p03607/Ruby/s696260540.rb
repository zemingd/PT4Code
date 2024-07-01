_, *values = readlines.map(&:chomp)
counts = values.reduce(Hash.new{|h, k| h[k]=0}) do |h, v|
  h[v] += 1
  h
end
p counts.select {|k, c| c % 2 == 1}.length