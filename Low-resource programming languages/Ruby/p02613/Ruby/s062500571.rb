n = gets.to_i
judges = n.times.map{ gets.strip.to_s }

puts "AC x #{judges.count("AC")}"
puts "WA x #{judges.count("WA")}"
puts "TLE x #{judges.count("TLE")}"
puts "RE x #{judges.count("RE")}"