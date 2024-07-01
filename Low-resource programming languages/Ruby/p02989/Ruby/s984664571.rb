n=gets.to_i
d=gets.split.map(&:to_i).sort

p n.odd? ? 0 : d[n/2] - d[n/2-1]