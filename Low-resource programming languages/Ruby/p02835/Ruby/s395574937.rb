line = gets.split(' ').map(&:to_i)

if line[0] + line[1] + line[2] <= 21 then
  print "win"
else
  print "bust"
end