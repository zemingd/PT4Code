a,b,c,d = gets.chop.split.map(&:to_i)
start = [a,c].max
finish = [b,d].min
puts [finish-start,0].max