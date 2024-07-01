n = gets.chomp.to_i

arr = Array.new(n + 1, 0)
ind = 1
while ind <= n 
	ngo = ind 
	while ngo <= n 
		arr[ngo] += 1
		ngo += ind 
	end
	ind += 1
end
cnt = 0
1.step(n, 2) do |i|
	cnt += 1 if arr[i] == 8
end
puts cnt