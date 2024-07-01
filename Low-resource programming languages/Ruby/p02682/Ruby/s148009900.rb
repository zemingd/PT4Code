arr = gets.split.map(&:to_i)
ans = 0
if  arr[0] > arr[3]
	ans = arr[3]
elsif	arr[0] + arr[1] >= arr[3]
	ans = arr[0]
else
	ans = arr[0] - (arr[3] - arr[0] - arr[1])
end

p ans