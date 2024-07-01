N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)
C = gets.chomp.split.map(&:to_i)
ans = 0
(1..N-1).each do |i|
  if A[i] - A[i-1] == 1
    ans += B[A[i]-1]
    ans += C[A[i]-2]
  else
    ans += B[A[i]-1]
  end
end
ans += B[A[0]-1]
puts ans
