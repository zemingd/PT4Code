K = gets.chomp.to_i
A, B = gets.chomp.split(" ").map(&:to_i)

d1, m1 = A.divmod(K)
d2, m2 = B.divmod(K)

if m1.zero? || m2.zero? || d1 < d2
  puts "OK"
else
  puts "NG"
end
