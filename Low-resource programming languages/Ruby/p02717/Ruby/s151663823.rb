X, Y, Z = $stdin.read.split.map {|i| i.to_i }
a, b, c = X, Y, Z
a, b = b, a
a, c = c, a
puts [a, b, c].join(' ')
