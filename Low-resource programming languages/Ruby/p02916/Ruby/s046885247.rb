N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

sum = 0
N.times do |i|
  sum += B[A[i] - 1]
  if i > 0 && A[i - 1] + 1 == A[i]
    sum += C[A[i -1] - 1]
  end
end
print sum