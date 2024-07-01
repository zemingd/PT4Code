N = gets.to_i
a = gets.split(" ").map(&:to_i)
product  = a.inject(:*)

ans = 0
while product.even?
	product /=2
	ans += 1
end

print ans