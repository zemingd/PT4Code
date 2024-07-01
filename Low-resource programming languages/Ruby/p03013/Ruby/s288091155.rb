N, M = gets.split(' ').map(&:to_i)
MOD = 10 ** 9 + 7
 
a = [-1]
M.times do
  a.push(gets.to_i)
end
a.push(N+1)
 
@memo = {}
 
def com(n)
  return @memo[n] if @memo[n]
  return 0 if n == 0
  return 1 if n == 1
  
  c = (com(n-1) + com(n-2))%MOD
  @memo[n] = c
  return c
end
 
b = Array.new
M+1.times do |i|
  b.push(com(a[i+1] - a[i] - 1))
end
 
p b.inject(:*%MOD)