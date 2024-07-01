s = gets.strip.split("").map(&:to_i)
a = s.sum 
b = s.size-a
puts ([a,b].min)*2