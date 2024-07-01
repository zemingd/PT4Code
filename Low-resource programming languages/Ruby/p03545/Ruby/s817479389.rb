n = gets.chop.split("").map(&:to_i)

flag = false
m = [[1,1,1],[1,1,-1],[1,-1,1],[1,-1,-1],[-1,1,1],[-1,1,-1],[-1,-1,1],[-1,-1,-1]]

i = 0
while i < 8 && !flag
	r = n[0] + m[i][0] * n[1] + m[i][1] * n[2] + m[i][2] * n[3]
	flag = true if r == 7
	i += 1
end
op = m[i-1].map{|k| k == 1 ? "+" : "-"}
print "#{n[0]}#{op[0]}#{n[1]}#{op[1]}#{n[2]}#{op[2]}#{n[3]}=7"
