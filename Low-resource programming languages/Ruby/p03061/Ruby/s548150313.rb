# input
n = gets.chomp.to_i
A = [0] + gets.chomp.split.map(&:to_i)

# define
L = Array.new(n+1, 0)
R = Array.new(n+1, 0)
M = Array.new(n, 0)

# main
(2..n).each do |i|
  L[i] = L[i-1].gcd(A[i-1])
  R[n+1-i] = R[n+2-i].gcd(A[n+2-i])
end
  
n.times do |i|
  M[i] = L[i+1].gcd(R[i+1])
end

# output  
puts M.max
