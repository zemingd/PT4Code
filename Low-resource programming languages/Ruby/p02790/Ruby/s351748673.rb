io = STDIN
a,b=io.gets.split.map(&:to_i)
puts [a.to_s * b ,b.to_s * a].min
