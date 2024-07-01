a,b,c,k = gets.split.map(&:to_i)
p [a,k].min - [0,k-a-b].max