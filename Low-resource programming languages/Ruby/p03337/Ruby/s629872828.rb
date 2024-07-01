a, b = $stdin.read.split.map(&:to_i)
puts [a+b, a-b, a*b].max
