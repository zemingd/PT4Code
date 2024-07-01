N = gets.to_i
AE = 5.times.map{|_| gets.to_i}

min = AE.min
ans = N / min + 4 + (N % min == 0 ? 0 : 1)
p ans