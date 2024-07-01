N = gets.to_i
class S
	attr_accessor :s,:c
	def initialize(s)
		self.s = s
		self.c = 1
	end
end
str = []
N.times do
	str << gets.chomp
end
str.sort!
cur = str[0]
curS = [S.new(str[0])]
j = 0
for i in 1...N
	if str[i] != cur
		cur = str[i]
		j += 1
		curS << S.new(str[i])
	else
		curS[j].c += 1
	end
end
ans = curS.sort{|a,b| a.c <=> b.c}
ans.each do |aa|
  puts aa.s
end
asd = curS[curS.size-1].c
ret = []
for k in 0...curS.size
	if ans[curS.size-1-k].c == asd
		ret << ans[curS.size-1-k].s
	else
		break
	end
end
ret.sort!
puts ret