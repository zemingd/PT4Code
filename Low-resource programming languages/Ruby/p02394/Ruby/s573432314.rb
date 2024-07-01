n = gets.split(" ")
w=n[0].to_i
h=n[1].to_i
x=n[2].to_i
y=n[3].to_i
r=n[4].to_i
xmax = w - r
ymax = h - r
if r<=x && x<=xmax && r<=y && y<=ymax
    print "Yes\n"
else
    print "No\n"
end