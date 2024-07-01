N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

ans = 0

N.times do |i|
  ans += B[i]

  if i != 0 && A[i-1] +1 == A[i]
    ans += C[A[i-1]-1]
  end
end

puts ans
