c = gets.to_i
temp = "a"
ac = 0
wa = 0
tle = 0
re = 0
c.times do
  temp = gets.to_s
  if temp == "AC\n"
    ac = ac + 1
  elsif temp == "WA\n"
    wa = wa + 1
  elsif temp == "RE\n"
    re = re + 1
  else
    tle = tle + 1
  end
end
puts "AC x " + ac.to_s
puts "WA x " + wa.to_s
puts "TLE x "+tle.to_s
puts "RE x " + re.to_s
