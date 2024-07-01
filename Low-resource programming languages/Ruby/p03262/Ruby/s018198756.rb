def gcd(a,b)
  a.gcd(b)
end


n,x = gets.split.map(&:to_i)
x = gets.split.map{|v| (v.to_i-x).abs}

ans = x[0]
(1..(n-1)).each do |i|
  ans = gcd(ans, x[1])
end

puts ans