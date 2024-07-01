n,m,k = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

accum_a, accum_b, ans, max_j = [0], [0], 0, m

(A.size).times { |i| accum_a << accum_a[i] + A[i] }
(B.size).times { |i| accum_b << accum_b[i] + B[i] }

A.size.times { |i|
  break if accum_a[i] > k # Aが読めなくなったとき
  j -= 1while accum_b[j] > k - a[i]  # Aを読んでBが読める間
  ans = [ans, i+j].max
}

puts ans
