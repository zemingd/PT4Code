line = readlines.map(&:chomp)

N = line[0].to_i

ac = 0
wa = 0
tle = 0
re = 0
for i in 1..N do
  s = line[i]
  if s == "AC" then
    ac += 1
  elsif s == "WA" then
    wa += 1
  elsif s == "TLE" then
    tle += 1
  else
    re += 1
  end
end
    
puts "AC x " + ac.to_s
puts "WA x " + wa.to_s
puts "TLE x " + tle.to_s
puts "RE x " + re.to_s