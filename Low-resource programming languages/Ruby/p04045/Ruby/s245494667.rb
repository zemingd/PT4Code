n,k=gets.chomp.split(" ").map{|i| i.to_i}
d=gets.chomp.split(" ").map{|i| i.to_i}

a=Array.new()
0.upto(9) do |i|
	if !d.index(i) then
		a.push(i)
	end
end

keep_digits_as_low_as_possible=false
n=n.to_s.split("").map{|i| i.to_i} #nを桁ごとに分割
ans=Array.new()
round=false #次の桁に繰り上がる

n.each do |i|
	if keep_digits_as_low_as_possible then
		ans.push(a[0])
	else
		round=true
		i.upto(9) do |j|
			if a.index(j) then
				ans.push(j)
				round=false
				break
			end
		end
		if round then
			break
		end
	end
end

if round then
	ans=[]
	n.each do |i|
		ans.push(a[0])
	end
	if a[0]==0 then
		ans.unshift(a[1])
	else
		ans.unshift(a[0])
	end
end

ans.each do |i|
	print i
end
print "\n"