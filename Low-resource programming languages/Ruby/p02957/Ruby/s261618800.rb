a = gets.to_i
b = gets.to_i
if (a-b).abs%2 == 0 then
  print (a-b).abs/2 
else
  print "IMPOSSIBLE"