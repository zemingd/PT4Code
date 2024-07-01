_ = gets
D = gets.split.map(&:to_i)

d = D.sort
h = d.size/2
p ((d[h-1]+1)..d[h]).size
