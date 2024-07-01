a = gets.split.map &:to_i
if a[0] + a[1] + a[2] >= 22
  print "bust"
else
  print "win"
end