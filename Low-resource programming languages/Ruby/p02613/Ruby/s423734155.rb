n = gets.to_i
i = 0
s = []

while i < n
  s << gets
  i += 1
end

ac = s.count("AC")
wa = s.count("WA")
tle = s.count("TLE")
re = s.count("RE")

puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"
