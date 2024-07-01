n, l = gets().split(' ').map(&:to_i)

sum = (l + (l + n - 1)) * n / 2
if l > 0
	sum -= l
elsif (l + n - 1) < 0
	sum -= (l + n - 1)
end

puts sum
