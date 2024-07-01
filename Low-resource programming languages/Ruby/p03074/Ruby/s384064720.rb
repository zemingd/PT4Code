N, K = gets.chomp.split(' ').map{|x| x.to_i}
S = gets.chomp
A = []
idx = 0
while idx < N do
  ch = S[idx]
  cnt = 0
  
  while idx < N and ch == S[idx] do
    idx += 1
    cnt += 1
  end

  A.push([ch, cnt])
end

M = A.size
sum = Array.new(M+1, 0)
for i in 1..M do
  sum[i] = sum[i-1] + A[i-1][1]
end


def getSum(sum, l, r)
  r = [r, M].min
  return sum[r] - sum[l]
end

ans = 0
for i in 0...M do
  score = 0
  if A[i][0] == '0'
    score = getSum(sum, i, i + (K-1)*2 + 2)
  else
    score = getSum(sum, i, i + K * 2 + 3)
  end
  ans = [ans, score].max
end

p ans
        
