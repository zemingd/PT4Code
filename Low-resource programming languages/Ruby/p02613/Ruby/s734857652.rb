n = gets.chomp.to_i
#p n
s = readlines.map(&:chomp)
#p s
ac = 0
wa = 0
tle = 0
re = 0
n.times{ |i|
	if s[i] == 'AC'
		ac += 1
	elsif s[i] == 'WA'
		wa +=1
	elsif s[i] == 'TLE'
		tle += 1
	elsif s[i] == 'RE'
		re += 1
	end
}
puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"

