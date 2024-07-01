n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

def gcd(a, b)
  return gcd(b, a) if a>b
  while a != 0
     a, b = b % a, a
  end
  return b
end

ans = a[0]
1.upto(n-1) do |i|
  ans = gcd(ans, a[i])
end

puts ans