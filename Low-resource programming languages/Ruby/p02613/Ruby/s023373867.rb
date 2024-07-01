n = gets.to_i
results = []
n.times do |i|
  s = gets.chomp
  results << s
end

puts "AC x #{results.count("AC")}"
puts "WA x #{results.count("WA")}"
puts "TLE x #{results.count("TLE")}"
puts "REx #{results.count("RE")}"