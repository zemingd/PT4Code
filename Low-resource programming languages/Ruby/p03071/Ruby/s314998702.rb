a,b = STDIN.gets.strip.split.map(&:to_i)
puts a==b ? a*2 : [a,b].max * 2 - 1
