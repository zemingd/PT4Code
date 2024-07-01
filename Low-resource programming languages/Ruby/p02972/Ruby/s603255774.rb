N = gets.to_i
a = gets.split(' ').map(&:to_i)
a.unshift(0)
ballin = []

N.downto(1) do |i|
	s = ballin.select{|n| n % i == 0}.size
	if s & 1 != a[i]
		ballin.unshift(i)
	end
end
cnt = ballin.size
puts cnt
if cnt > 0
	puts ballin.join(' ')
end