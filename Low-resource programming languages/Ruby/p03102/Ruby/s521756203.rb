n,m,c = gets.chomp.split(" ").map{|e|e.to_i}
b = gets.chomp.split(" ").map{|e|e.to_i}
ans = 0

n.times do
	a = gets.chomp.split(" ").map{|e|e.to_i}
	sum = c
	m.times do |i|
		sum += b[i]*a[i]
	end
	if sum>0 then ans+=1 end
end

p(ans)