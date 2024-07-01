w, h, x, y, r = gets.chomp.split(" ")
xMax = x-r
yMax = y-r
if r <= x && x <= xMax && r <= y && y <= yMax
    print "Yes\n"
else
      print "No\n"
end