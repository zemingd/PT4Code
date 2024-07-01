def chance(n)
	return 0.5 * (n+1)
end

n, k = gets.chomp.split(" ").map{|e|e.to_i}
ps = gets.chomp.split(" ").map{|e|e.to_i}

c = []

for i in ps do
	c << chance(i)
end


if k==1 then
	p(c.sort![-1])
else
	d = [c[0]]
	1.upto(n-1) do |j|
		d << d[j-1] + c[j]
	end
	
	e = []
	0.upto(n-k-1) do |j|
		e << d[j+k] - d[j]
	end
end

e.sort!
p(e[-1])