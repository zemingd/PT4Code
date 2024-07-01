N = gets.to_i
A = gets.split.map(&:to_i)

(N-1).times do |i|
  A[i+1] = A[i+1]%A[0]
end

A.delete(0)

p A.first