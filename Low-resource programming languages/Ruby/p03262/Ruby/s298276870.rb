def gcd(a, b)
  while b > 0
    a,b = b,a % b
  end
  a
end

n, x_large = gets.chop.split.map(&:to_i)
x = gets.chop.split.map(&:to_i)

x << x_large

x.sort!
x = x.map{ |num| num-x[0]}


ans = gcd(x[0],x[1])

unless n == 1
  for i in 2..n
    ans = gcd(ans, x[i])
  end
else
  ans = x[1]
end

print ans
