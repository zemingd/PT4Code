n = gets.chop.to_i
a = []
a << gets.chop
t = a[0].split(" ")
N = []
t.each do |a|
	N << a.to_i
end
O = N.sort
ABC = O[n/2 - 1]
ARC = O[n/2]
p ARC - ABC