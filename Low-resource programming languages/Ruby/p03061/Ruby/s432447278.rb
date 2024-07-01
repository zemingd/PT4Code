n = gets.to_i
num = gets.split.map(&:to_i)
gc = Array.new(2).map{Array.new(n,0)}
ans = Array.new(n,0)
for i in 1..n-1
  gc[0][i] = gc[0][i-1].gcd(num[i-1])
end
for i in 2..n
  gc[1][-i] = gc[1][-i+1].gcd(num[-i+1])
end
for i in 0..n-1
  ans[i] = (gc[0][-i]).gcd(gc[1][-i])
end
ans.sort!
puts ans[-1]
