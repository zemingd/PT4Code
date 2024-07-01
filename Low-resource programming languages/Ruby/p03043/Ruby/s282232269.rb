N,K = gets.split.map(&:to_i)
if N > K
    new_n = N-K
else
    new_n = N
end
base = 1.0/N
result = Array.new(N,base)
for i in 0..(new_n-1)
    point = i+1
    n = 0
    while point < K
        point *= 2
        n += 1
    end
    result[i] = base/(2.0**n)
end
puts result.inject(:+)