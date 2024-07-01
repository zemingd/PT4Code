N = gets.to_i
A = gets.split(" ").to_i
B = gets.split(" ").to_i
C= gets.split(" ").to_i
sum = 0
cooking = -1
bonus = 0

for i in 1..N
  if A[i]-1 == cooking
    sum += C[bonus++]
  end
  cooking = A[i]
  sum += B[cooking]
end

puts sum