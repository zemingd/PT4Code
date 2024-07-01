N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)
C = gets.chomp.split.map(&:to_i)
# A, B, C = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

ans = 0
A.each do |i|
  ans += B[i-1]
end

0.upto(A.size-2).each do |j|
  i = A[j]
  if (A[j]+1 == A[j+1])
    ans += C[i-1]
  end
end

p ans