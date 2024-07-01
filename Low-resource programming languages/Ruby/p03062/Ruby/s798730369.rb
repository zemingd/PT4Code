n, *A = $stdin.lines
n = n.to_i
A = A.split.map(&:to_i)

(0...(n-1)).each do |i|
  if (A[i] + A[i+1]) < 0
    A[i] = A[i] * -1
    A[i+1] = A[i+1] * -1
  end
end
puts A.sum