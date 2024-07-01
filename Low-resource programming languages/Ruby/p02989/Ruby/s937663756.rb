n = gets.to_i
d = gets.split.map &:to_i
a,b = d.sort[n/2-1,2]
p b-a