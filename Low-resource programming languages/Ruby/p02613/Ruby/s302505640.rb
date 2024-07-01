cnt = gets.chomp.to_i
count_ac = 0
count_wa = 0
count_tle = 0
count_re = 0
 
for i in 1..cnt
  result = gets.chomp
  case result
    when "AC" then
      count_ac += 1
    when "WA" then
      count_wa += 1
    when "TLE" then
      count_tle += 1
    when "RE" then
      count_re += 1
  end
    i += 1
end
  
puts "AC x #{count_ac}"
puts "WA x #{count_wa}"
puts "TLE x #{count_tle}"
puts "RE x #{count_re}"