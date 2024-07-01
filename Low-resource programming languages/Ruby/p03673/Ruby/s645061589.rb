n = gets.to_i
A = gets.split.map(&:to_i)

B = []
C = []

n.times do |i|
  
  B.push(A[i]) if i % 2 == 0
  C.push(A[i]) if i % 2 != 0
end

ans = C.reverse + B if n % 2 == 0
ans = B.reverse + C if n % 2 != 0

puts ans.join(" ")