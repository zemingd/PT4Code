a,b = gets.split("").map(&:to_i)

if (a * b)%2 == 0
  print "Even"
else
  print"Odd"
end