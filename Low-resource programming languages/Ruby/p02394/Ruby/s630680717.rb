def in_rectangle(w, h, x, y, r)
  return (((x-r)>= 0) && ((x+r) <= w) && ((y-r)>= 0) && ((y+r)<=h))
end

values = gets.split(" ").map{ |s| s.to_i}
w = values[0]
h = values[1]
x = values[2]
y = values[3]
r = values[4]

inside = in_rectangle(w, h, x, y, r)
if inside
  print "Yes\n"
else
  print "No\n"
end