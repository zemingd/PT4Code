n = gets.to_i
ac = wa = tle = re = 0

n.times do
  case gets.strip
    when 'AC' then ac += 1
    when 'WA' then wa += 1
    when 'TLE' then tle += 1
    when 'RE' then re += 1
  end
end
      
puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"
