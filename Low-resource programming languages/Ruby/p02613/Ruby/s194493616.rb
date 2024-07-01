ac = 0
wa = 0
tle = 0 
re = 0

n = gets.to_i

results = n.times.map { gets.chomp }

results.each do |e|
  case e 
  when 'AC'
    ac += 1
  when 'WA'
    wa += 1
  when 'TLE'
    tle += 1
  when 'RE'
    re += 1
  end
end

print "AC x #{ac}\n"
print "WA x #{wa}\n"
print "TLE x #{tle}\n"
print "RE x #{re}\n"