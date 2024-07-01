N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)
m = 1
for i in 0..N-1 do
  m *= A[i] 
end
if m > 10**18
  m = -1
end
p m
