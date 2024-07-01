n = gets.to_i
line = readlines.map(&:chomp)

line.push("AC","WA","TLE","RE")
hash = line.tally 

puts "AC x " + ((hash["AC"]) - 1).to_s
puts "WA x " + ((hash["AC"]) - 1).to_s
puts "TLE x " + ((hash["AC"]) - 1).to_s
puts "RE x " + ((hash["AC"]) - 1).to_s