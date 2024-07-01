a, b = gets.chomp.split(" ").map(&:to_f)
print "#{((a+b)/(2.0)).round}"