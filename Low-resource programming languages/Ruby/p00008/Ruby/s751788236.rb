N = 1000000
arr = [1] * N
arr[0] = 0
arr[1] = 0

2.upto(N / 2){|i|
	if arr[i] == 1
		(i**2).step(N, i){|j|
			arr[j] = 0
		}
	end
}

2.upto(N){|i|
	arr[i] += arr[i-1]
}

while n = gets
	puts arr[n.to_i]
end