s = gets.chomp
t = gets.chomp

len = s.length
dic = Hash.new{}
len.times do |i|
	c = s[i]
	if dic[c]
		dic[c].push(i)
	else
		dic[c] = [i]
	end
end

period = 0
now = -1
checker = true
t.length.times do |i|
	char = t[i]
	if dic[char] == nil
		checker = false
		break
	else
		nxt = dic[char].bsearch{|n| n > now}
		if nxt == nil
			nxt = dic[char][0]
			period += 1
		end
		now = nxt
	end
end
if checker
	puts period * len + now + 1
else
	puts '-1'
end