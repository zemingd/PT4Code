n = gets.to_i
a = [-1]
checked = Array.new(n+1,0)
n.times do
	a.push(gets.to_i)
end
current = 1
cnt = 0
flag = false
while flag == false && checked[current] == 0
	checked[current] = 1
	current = a[current]
	cnt += 1
	if current == 2
		flag = true
	end
 end

ans = flag ? cnt : -1
puts ans