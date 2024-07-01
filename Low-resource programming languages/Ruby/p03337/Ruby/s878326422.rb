io = STDIN
a,b=io.gets.split.map(&:to_i)
puts [a+b,a-b,a*b].max
