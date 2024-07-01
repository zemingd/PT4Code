x, y, z = gets.split(' ').map{|nm| Math.sqrt(nm.to_i)}
if x + y < z
  print "Yes"
else
  print "No"
end
