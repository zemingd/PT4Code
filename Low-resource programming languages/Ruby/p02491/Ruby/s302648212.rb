read = gets.chomp.split(" ")
print "#{read[0].to_i / read[1].to_i} "
print "#{read[0].to_i % read[1].to_i} "
puts "#{read[0].to_f / read[1].to_f}"