N, K = gets.split.map(&:to_i)
S = gets.strip

A = []
x = S[0]
A << 0 if x == '0'
c = 1
for i in 1...N
  if S[i] != x
    A << c  
    x = S[i]
  end 
  c += 1
end 
A << c

if A.size <= K * 2 + 1
  puts A.last
else  
  m = A[K * 2]
  i = 2
  while i + K * 2 < A.size
    tmp = A[i + K * 2] - A[i - 1]
    m = tmp if tmp > m
    i += 2
  end
  puts m
end