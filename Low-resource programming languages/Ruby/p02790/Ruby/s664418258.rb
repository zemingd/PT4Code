A, B = gets.chomp.split(" ").map(&:to_i)
s1 = A.to_s * B
s2 = B.to_s * A
puts [s1, s2].min
