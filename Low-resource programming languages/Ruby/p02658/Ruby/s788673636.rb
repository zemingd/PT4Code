N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)
M = 1
for i in 0..N-1 do
  M *= A[i] 
end
if M > 10**18
  M = -1
end
p M
