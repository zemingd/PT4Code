n = gets.to_i

ss = {}

ss['AC'] = 0
ss['WA'] = 0
ss['TLE'] = 0
ss['RE'] = 0

n.times{
	s = gets.chomp
	ss[s] += 1
}

puts "AC x #{ss['AC']}"
puts "WA x #{ss['WA']}"
puts "TLE x #{ss['TLE']}"
puts "RE x #{ss['RE']}"
