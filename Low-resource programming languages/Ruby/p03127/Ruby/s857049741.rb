N = gets.to_i
A = gets.split.map(&:to_i).sort

while A[0] != 1 && A.size > 1 do
  A[1] = A[1] % A[0]
  A.delete(0)
  A.sort!
end

puts A[0]