# Maximum Sum
# start10:18-
A = gets.chomp.split(" ").map(&:to_i)
K = gets.chomp.to_i
ans = 0
for i in 1..K do
   A[A.index(A.max)] = A.max * 2
end
for i in 0..A.length-1 do
    ans = ans + A[i]
end
puts ans