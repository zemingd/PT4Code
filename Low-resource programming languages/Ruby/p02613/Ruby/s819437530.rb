n = $stdin.gets.chomp.to_i
h = Hash.new()
h["ac"] = 0;h["wa"] = 0;h["tle"] = 0;h["re"] = 0
n.times do
  n = $stdin.gets.chomp.downcase
  h[n] += 1
end

puts "AC x #{h["ac"]}"
puts "WA x #{h["wa"]}"
puts "TLE x #{h["tle"]}"
puts "RE x #{h["re"]}"
