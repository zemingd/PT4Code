n=gets.to_i
d=gets.split.map(&:to_i).sort
t=n/2
puts (d[t]==d[t-1])?0:d[t]-d[t-1]