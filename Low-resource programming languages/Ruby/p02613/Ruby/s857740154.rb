n = gets.to_i
ans = n.times.map{gets.chomp}

ac = 0
wa = 0
tle = 0
re = 0


ans.each do |r|
  if r == "AC"
    ac += 1
  elsif r == "WA"
    wa += 1
  elsif r == "TLE"
    tle += 1
  else
    re += 1
  end
end

puts "AC x #{ac}\nWA x #{wa}\nTLE x #{tle}\nRE x #{re}"