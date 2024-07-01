io = STDIN
a,b,c=io.gets.split.map(&:to_i)

puts [c,b/a].min
