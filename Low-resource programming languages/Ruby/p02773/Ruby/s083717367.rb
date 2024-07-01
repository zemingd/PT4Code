N = gets.to_i
class S
	attr_accessor :s,:c
	def initialize(s)
		self.s = s
		self.c = 0
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
		curS << S.new(str[i])
		j += 1
	else
		curS[j].c += 1
	end
end
ans = curS.sort{|a,b| a.c <=> b.c}
asd = curS[curS.size-1].c
ret = []
for k in 0...curS.size
	if curS[curS.size-1-k].c == asd
		ret << curS[curS.size-1-k].s
	end
end
ret.sort!
puts ret