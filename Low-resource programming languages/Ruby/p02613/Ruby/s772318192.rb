n = gets.to_i
s = []
n.times do
  s.push gets.chomp
end
c = s.tally
puts "AC x "  + (c["AC"]  || 0).to_s
puts "WA x "  + (c["WA"]  || 0).to_s
puts "TLE x " + (c["TLE"] || 0).to_s
puts "RE x "  + (c["RE"]  || 0).to_s
