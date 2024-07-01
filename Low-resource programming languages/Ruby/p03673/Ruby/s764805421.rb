n =  gets.to_i
a = gets.split.map(&:to_i)


f = n % 2 == 0 ? n/2 : n/2 + 1
k = n % 2 == 0 ? 1 : 2

f.times do |i|
	t = a[n - 2 * i - 1]
	print "#{t} "
end
(n-f).times do |i|
	t = a[k + 2 * i - 1]
	print "#{t} "
end