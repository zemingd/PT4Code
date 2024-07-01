a,b,c,d=gets.split(" ").map(&:to_i)
puts (b<c||d<a)?0:[b,d].min-[a,c].max