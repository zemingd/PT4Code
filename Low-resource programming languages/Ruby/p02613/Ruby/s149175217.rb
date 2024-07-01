line = gets.chomp.to_i
ac = 0
wa = 0
tle = 0
re = 0
line.times do
  r = gets.chomp
  case r
  when "AC"
    ac += 1
  when "WA"
    wa += 1
  when "TLE"
    tle += 1
  when "RE"
    re += 1
  end
end

puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
print "RE x #{re}"
