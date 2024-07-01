read = gets.chomp.split(" ")
print "#{read[0].to_i / read[1].to_i} "
print "#{read[0].to_i % read[1].to_i} "
divf = read[0].to_f / read[1].to_f
puts sprintf("%.7f",divf)