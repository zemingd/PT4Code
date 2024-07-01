def gcd(a,b)
  a,b = a.abs,b.abs
  a,b = b,a if a < b
  if b == 0
    return a
  else
    return gcd(b,a%b)
  end
end
n,pos = gets.split.map(&:to_i)
x = gets.split.map{|v| (v.to_i-pos).abs}
x.sort!
ans = gcd(x[-1],x[0])
x.each do |v|
  if v % ans != 0
    ans = gcd(v,ans)
  end
end
p ans
