def gcd(x, y)
  return (x % y == 0)? y: gcd(y, x%y)
end

N = gets.to_i
A = gets.chomp.split(' ').map{|x| x.to_i}


l = Array.new(N)
r = Array.new(N)
for i in 0...N
  l[i] = A[i]
  r[i] = A[i]
end

for i in 1...N
  l[i] = gcd(l[i-1], l[i])
  r[N-i-1] = gcd(r[N-i-1], r[N-i])
end

ans = 1
for i in 0...N
  if i == 0
    ans = [ans, r[i+1]].max
  elsif i == N-1
    ans = [ans, l[i-1]].max
  else
    ans = [ans, gcd(l[i-1], r[i+1])].max
  end
end
p ans
  
           



