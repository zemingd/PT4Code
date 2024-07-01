str = gets.split
N,M = str[0].to_i, str[1].to_i
A = Array.new(N+1)
B = Array.new(M+1)
MOD = 1000000007

for x in 0...M
  B[x] = gets.chomp.to_i
end
B[M] = N+1

A[0] = 1
i = 0
if B[0] != 1
  A[1] = 1
else
  A[1] = 0
  i += 1
end

for x in 2..N
  if x != B[i]
    A[x] = (A[x-1] + A[x-2]) % MOD
  else
    A[x] = 0
    i += 1
  end
end

puts A[N]