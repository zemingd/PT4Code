a, b = gets.split.map(&:to_i)
if a*b.even?
  print "No"
else
  print "Yes"
end