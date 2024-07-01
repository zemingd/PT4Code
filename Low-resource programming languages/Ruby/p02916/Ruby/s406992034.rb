N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

res = B.reduce(:+)

(N-1).times do |i|
  if A[i+1] == A[i]+1

    res += C[A[i]-1]
  end
end
puts res