i = gets.chomp.split("").map(:&to_i)
if i[0] == i[1] or i[1] == i[2] or i[2] == i[3] then
  print "Bad"
else
  print "Good"
end