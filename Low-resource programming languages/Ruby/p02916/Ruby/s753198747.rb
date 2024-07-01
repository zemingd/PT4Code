N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = [0] + gets.split.map(&:to_i)
s = 0
(0...N).step do |i|
  s += B[A[i] - 1]
  if i > 0 && (A[i] - A[i-1]) == 1
    s += C[A[i-1]]
  end
end
puts s