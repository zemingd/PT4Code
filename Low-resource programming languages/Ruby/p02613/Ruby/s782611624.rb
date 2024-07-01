N = gets.to_i
a = N.times.map{gets.chomp}

puts "AC x #{a.count("AC")}"
puts "WA x #{a.count("WA")}"
puts "TLE x #{a.count("TLE")}"
puts "RE x #{a.count("RE")}"

