str = gets.split
N,K = str[0].to_i, str[1].to_i
a = Array.new(N)
str = gets.split
a[0] = str[0].to_i
for i in 1...N do
    a[i] = a[i-1] + str[i].to_i
end
answer = K * 0.5

max = a[K-1]
for i in K...N do
    n = a[i] - a[i-K]
    max = max < n ? n : max
end
answer += max * 0.5
puts answer