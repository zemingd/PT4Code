i = 0
arr = []
count_ac = 0
count_wa = 0
count_tle = 0
count_re = 0

while true
  arr[i] = gets.chomp
  if(arr[i]) == ""
    break
  end
  
  case arr[i]
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

