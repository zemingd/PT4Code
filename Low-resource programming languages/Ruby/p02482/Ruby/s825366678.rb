
a, b = gets.split.map(&:to_i)
if a > b then
  print "a > b"
elsif a < b then
  print "a < b" 
else
  print "a == b"
end