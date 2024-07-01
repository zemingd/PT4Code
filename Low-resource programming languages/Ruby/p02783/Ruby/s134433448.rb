arr = gets.split.map(&:to_i)
ans = 0
while arr[0] > 0 do
	arr[0] -= arr[1]
	ans += 1
end
p ans