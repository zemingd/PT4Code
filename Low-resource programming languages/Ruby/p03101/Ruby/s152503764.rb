c = []
while s = gets
  c.push(s.split.map(&:to_i))
end

#puts c[0][0]
#puts c[0][1]
#puts c[1][0]
#puts c[1][1]
puts (c[0][0]-c[1][0])*(c[0][1]-c[1][1])