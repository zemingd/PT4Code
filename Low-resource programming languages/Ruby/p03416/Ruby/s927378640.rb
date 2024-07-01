A, B = gets.chomp.split

a1, a2 = A[0..1], A[0..2]
b1, b2 = B[0..1], B[0..2]
a = a2.to_i
a += 1 if A > a2 + a1.reverse
b = b2.to_i
b += 1 if B >= b2 + b1.reverse
ans = b - a

puts ans
