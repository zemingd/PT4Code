N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

c = 0
N.times do |i|
  b = B[i]
  n = [b, A[i]].min
  b -= n
  c += n
  b = [b, A[i+1]].min
  A[i+1] -= b
  c += b
end
puts c
