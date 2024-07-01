str = gets.split
W,H,x,y = str[0].to_i, str[1].to_i, str[2].to_i, str[3].to_i

print W*H*0.5
print " "
if W == x*2 && H == y*2
  print 1
else
  print 0
end
puts