a = gets.to_i
ac = 0
tle = 0
wa = 0
re = 0
a.times do |n|
  ab= gets.chomp
  if ab =="AC"
      ac +=1
  elsif ab =="TLE"
      tle +=1
  elsif ab =="WA"
      wa +=1
  else
      re+=1
  end
end
puts "AC x #{ac}"
puts "TLE x #{tle}"
puts "WA x #{wa}"
puts "RE x #{re}"