n = gets.to_i
ary = []
n.times do
  ary << gets.strip
end
puts "AC x #{ary.count("AC")}"
puts "WA x #{ary.count("WA")}"
puts "TLE x #{ary.count("TLE")}"
puts "RE x #{ary.count("RE")}"