N = gets.to_i
a = gets.split(' ').map(&:to_i)
a.unshift(0)
ballin = []

N.downto(1) do |i|
	if i > N / 2 && a[i] == 1
		ballin.unshift(i)
	elsif i > Math.sqrt(N)
		mul = []
		t = N / i
		t.downto(2) do |j|
			if mul.select{|n| n % i == 0}.size % 2 != a[i * j]
				mul.unshift(j)
			end
		end
		if mul.size % 2 != a[i]	
			ballin.unshift(i)
		end
	else
		s = ballin.select{|n| n % i == 0}.size
		if s % 2 != a[i]
			ballin.unshift(i)
		end
	end
end
cnt = ballin.size
puts cnt
if cnt > 0
	puts ballin.join(' ')
end