N = gets.to_i
ac = wa = tle = re = 0
s = []
N.times do |i|
  s << gets.to_s.chomp
end

for i in s
  if i == "AC"
    ac +=1
  elsif i == "WA"
    wa += 1
  elsif i == "TLE"
    tle += 1
  elsif i == "RE"
    re += 1
  end
end

puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"
