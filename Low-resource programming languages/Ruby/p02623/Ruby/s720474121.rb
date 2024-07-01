N,M,K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)
a = [0]
b = [0]

(0..N-1).each do |x|
  a << a[x]+A[x]
end

(0..M-1).each do |y|
  b << b[y]+B[y]
end

n = 0
m = M
ans = 0
while(a[n]<K) do
  while(a[n] + b[m] > K) do
    m -= 1
    break if m == 0
  end
break if a[n] + b[m] > K
ans = [ans, n+m+1].max
n += 1
break if n == N+1
end

puts ans
  