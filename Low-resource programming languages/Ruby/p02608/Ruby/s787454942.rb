N = gets.to_i
arr =  [*1..100].repeated_combination(3).to_a
ns = Array.new(10000, 0)
tmp = 0
(arr.length).times do |i|
	tmp = arr[i][0]**2 + arr[i][1]**2 + arr[i][2]**2 + arr[i][0]*arr[i][1] + arr[i][0]*arr[i][2] + arr[i][1]*arr[i][2]
	if tmp <= 10000
		if arr[i][0] != arr[i][1] && arr[i][0] != arr[i][2] && arr[i][1] != arr[i][2]
			ns[tmp-1] += 6
		elsif arr[i][0] == arr[i][1] && arr[i][0] == arr[i][2] && arr[i][1] == arr[i][2]
			ns[tmp-1] += 1
		else
			ns[tmp-1] += 3
		end
	end
end

N.times do |i|
	p ns[i]
end