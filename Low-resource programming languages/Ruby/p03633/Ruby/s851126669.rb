ans = 1
gets.to_i.times{
	ans = ans.lcm(gets.to_i)
}
p ans