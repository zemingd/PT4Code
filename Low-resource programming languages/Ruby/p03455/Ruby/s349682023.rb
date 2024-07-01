a,b = gets.split.map(&:to_i)
if (a*b).even?
  print "Even"
else
  print "Odd"
end