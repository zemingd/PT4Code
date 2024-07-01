N = gets.to_i
A, B, C = 3.times.map { arry = gets.split.map(&:to_i); arry.unshift(2 * N) }

sum = (2 .. N).inject(B[A[1]]) do |s, j|
  i = A[j]
  i_ = A[j-1]
  b = B[i]
  c = C[i_]
  i_ + 1 == i ? s + b + c : s + b
end
puts sum