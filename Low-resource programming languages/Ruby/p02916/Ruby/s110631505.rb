N = gets.to_i
A = gets.split(' ').map(&:to_i)
B = gets.split(' ').map(&:to_i)
C = gets.split(' ').map(&:to_i)
s = 0
A.each_with_index do |a, i|
  s += B[a - 1]
  s += C[a - 2] if i > 0 && a == A[i - 1] + 1
end

puts s