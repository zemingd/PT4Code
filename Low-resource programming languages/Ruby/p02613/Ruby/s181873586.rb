ac = wa = tle = re = 0
gets.chomp.to_i.times{
	case gets.chomp
	when 'AC' then
		ac += 1
	when 'WA' then
		wa += 1
	when 'TLE' then
		tle += 1
	else
		re += 1
	end
}
puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"

