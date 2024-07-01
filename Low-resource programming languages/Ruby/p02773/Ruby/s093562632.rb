n = gets.to_i
ss = {}

n.times{
	s = gets.chomp
	if ss[s] == nil then
		ss[s] = 1
	else
		ss[s] += 1
	end
}

sss = ss.to_a.sort{ |a,b| b[1] <=> a[1] }

count = sss[0][1]

result = []

sss.each{ |s|
	if s[1] == count then
		result << s[0]
	end
}

puts result.sort.join("\n")
