N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

ans = 0
(N-1).downto(0) do |i|
  n = [B[i], A[i+1]].min
  B[i] -= n
  ans += n

  n = [B[i], A[i]].min
  A[i] -= n
  ans += n
end

puts ans
