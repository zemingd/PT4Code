n,k = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = Array.new(n)
s = 0
for i in 0..n-1
  B[i] = A.count(i+1)
end
B = B.sort
for x in 1..k
  s += B[n-x]
end
puts n - s