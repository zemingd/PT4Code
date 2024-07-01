line = gets.split(' ').map(&:to_i)
a=line[0].to_s*line[1]
b=line[1].to_s*line[0]
c=[a,b].sort
puts c[0]