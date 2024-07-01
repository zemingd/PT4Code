n,k=gets.split.map(&:to_i)
if k >= n then
	print 0
	exit
end
a=gets.split.map(&:to_i).sort.reverse
if k > 0 then
	a=a.shift(k)
end
p 	a.inject(:+)

