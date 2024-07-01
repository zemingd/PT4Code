N = gets.strip.to_i
ac = 0
wa = 0
tle = 0
re = 0


N.times do |i|
  s = gets.strip
  ac += 1 if s.eql?("AC")
  wa +=1 if s.eql?("WA")
  tle +=1 if s.eql?("TLE")
  re +=1 if s.eql?("RE")
end

puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"