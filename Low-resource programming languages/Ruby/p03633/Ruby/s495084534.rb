# lcmを求めればいいと思います はい
# なんかダメでした
# なんかアルゴリズムのコアは合ってたけどa,bとansの取扱がミスってたっぽい

n = gets.chomp.to_i

def gcd(a, b)
  return gcd(b, a) if a<b
  return a if b==0
  return gcd(b, a%b)
end

def lcm(a, b)
  return (a*b/gcd(a, b))
end

if n==1
  puts gets.chomp.to_i
else
  a = gets.chomp.to_i
  ans = 0
  (n-1).times do
    b = gets.chomp.to_i
    a = lcm(a, b)
  end
  puts a
end