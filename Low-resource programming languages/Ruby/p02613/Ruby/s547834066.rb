N = gets.chomp().to_i
Si = []
N.times do
  Si.push(gets.chomp().to_s)
end

ac = 0
wa = 0
tle = 0
re = 0

for result in Si do
  if result == "AC"
    ac += 1
  end
  if result == "WA"
    wa += 1
  end
  if result == "TLE"
    tle += 1
  end
  if result == "RE"
    re += 1
  end
end

puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"