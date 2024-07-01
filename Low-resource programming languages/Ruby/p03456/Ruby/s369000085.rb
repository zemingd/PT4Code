get = gets.split.map { |i| i.to_i }.inject
sqrt = Math.sqrt(get).to_i
if get == (sqrt ** 2)
  print "Yes"
else
  print "No"
end
