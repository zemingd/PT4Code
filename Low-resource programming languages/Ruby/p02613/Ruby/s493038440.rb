n = gets.to_i
s = []
n.times do
  s << gets.chomp
end

ac = 0
wa = 0
tle = 0
re = 0

s.each do |e|
  if e == "AC"
    ac += 1
  elsif e == "WA"
    wa += 1
  elsif e == "TLE"
    tle += 1
  elsif e == "RE"
    re += 1
  end
end

puts("AC x #{ac}")
puts("WA x #{wa}")
puts("TLE x #{tle}")
puts("RE x #{re}")