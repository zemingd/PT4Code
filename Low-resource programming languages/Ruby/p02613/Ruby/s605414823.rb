arr = gets.chomp.split("\n")
arr.each do |i|
  ac = 0
  wa = 0
  tle = 0
  re = 0
 
  case i
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
  p "AC x #{ac}\n WA x #{wa}\n TLE x #{tle}\n RE x #{re}"
