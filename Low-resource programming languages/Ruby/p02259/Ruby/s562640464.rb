N = gets.to_i

A = gets.split.map(&:to_i)

swap = true
count = 0
while swap
  tmp = false
  0.step(N-2) do |i|
    A[i], A[i+1], tmp, count = A[i+1], A[i], true, count + 1 if A[i] > A[i+1]
  end
  swap = tmp
end
puts A.join ' '
puts count
