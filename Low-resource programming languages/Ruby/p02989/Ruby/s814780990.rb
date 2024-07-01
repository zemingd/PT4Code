n=gets.to_i
p=gets.split.map(&:to_i).sort!
p p[n/2]-p[n/2-1]
