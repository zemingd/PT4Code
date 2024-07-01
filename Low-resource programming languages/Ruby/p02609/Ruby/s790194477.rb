gets; k = gets.strip
c = k.count('1')
ki = k.to_i(2)
kr = k.reverse
df1, df2 = ki % (c+1), (c == 1 ? 0 : ki % (c-1))
t1, t2 = 1, -1
def calc(x)
	ret = 1
	while x != 0
		ret += 1
		x %= x.to_s(2).count('1')
	end
	return ret
end

kr.chars.map{|i|
	ans = 0
	if i == '0'
		ans = calc((df1+t1+c+1) % (c+1))
	elsif c == 1
		ans = 1
	else
		ans = calc((df2+t2+c-1) % (c-1))
	end
	t1 = t1 * 2 % (c+1)
	t2 = t2 * 2 % (c-1) if c != 1
	ans
}.reverse.each{|x|p x}