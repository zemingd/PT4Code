S = gets.split(" ")
A = gets.split(" ").map(&:to_i)
T = gets.chomp
# p S,A,T

A[S.index(T)] -= 1
puts A.join(" ")