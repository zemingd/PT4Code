N, M, K = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)
B = gets.chomp.split(" ").map(&:to_i)

ans = 0
tt = 0

while tt <= K
  t = 0
  if A.empty? && B.empty?
    break
  elsif A.empty?
    t += B.pop
  elsif B.empty?
    t += A.pop
  elsif A.first < B.first
    t += A.pop
  elsif A.first > B.first
    t += B.pop
  elsif A.size > 1 && B.size > 1
    if A[1] > B[1]
      t += B.pop
    else
      t += A.pop
    end
  elsif A.size > 1
    t += A.pop
  elsif B.size > 1
    t += B.pop
  else
    raise
  end
  break if tt + t > K
  ans += 1
end
puts ans
