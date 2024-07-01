n = gets.to_i
v = gets.split.map(&:to_i)
e = []
o = []
v.size.times do |i|
	if i.even?
		e << v[i]
	else
		o << v[i]
	end
end
E, O = [], []
E_num, O_num = [], []

e.uniq.each do |i|
	E << e.count(i)
	E_num << i
	
end

o.uniq.each do |i|
	O << o.count(i)
	O_num << i
end

E.sort!.reverse!
O.sort!.reverse!
ans = 0



if E_num[0] == O_num[0]
	if E[0].to_i+O[1].to_i > O[0].to_i+E[1].to_i
		if O[1].nil?
			ans += n/2 
			puts ans
			exit
		end
		ans += e.size - E[0].to_i
		ans += o.size - O[1].to_i
	else
		if E[1].nil?
			ans += n/2
			puts ans
			exit
		end
		ans += o.size - O[0].to_i
		ans += e.size - E[1].to_i
	end

else
	ans += e.size - E[0]
	ans += o.size - O[0]
end

puts ans


