N = gets.to_i
ac = 0
wa = 0
tle = 0
re = 0

N.times do |i|
	tmp = gets.chomp.to_s
	if tmp == "AC"
		ac += 1
	elsif tmp == "WA"
		wa += 1
	elsif tmp == "TLE"
		tle += 1
	else
		re += 1
	end
end

puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"