n , k = gets.split.map(&:to_i)
ans = k

(n-1).times do
	ans *= k-1
end

puts ans 