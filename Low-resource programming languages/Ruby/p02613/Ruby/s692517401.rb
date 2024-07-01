n=gets.to_i
s=[]
n.times{s[_1]=gets.chomp}

puts "AC x #{s.count("AC")}"
puts "WA x #{s.count("WA")}"
puts "TLE x #{s.count("TLE")}"
puts "RE x #{s.count("RE")}"
