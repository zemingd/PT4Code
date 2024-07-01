get = gets
sum = get.split().map { |i| i.to_i }.inject(:+)


if sum % 2 == 0
  print "Even"
else
  print "odd"
end