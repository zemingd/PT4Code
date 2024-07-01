a = $stdin.read.split.map(&:to_i)
a.sort!
puts a.max - a.min
