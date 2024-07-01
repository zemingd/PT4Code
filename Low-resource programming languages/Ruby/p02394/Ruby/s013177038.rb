
def in_rectangle(w, h, x, y, r)
  return (((x-r)>= 0) && ((x+r) <= w) && ((y-r)>= 0) && ((y+r)<=h))
end

w = gets.to_i
h = gets.to_i
x = gets.to_i
y = gets.to_i
r = gets.to_i

inside = in_rectangle(w, h, x, y, r)
if inside
  print "Yes\n"
else
  print "No\n"
end