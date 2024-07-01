input = gets.split(" ").sort
for i in 0...input.length
  print "#{input[i].to_i}"
  if i < input.length-1 then print " " end
end