def gcd(a,b)
  a.gcd(b)
end

n,X = gets.split.map(&:to_i)
x = gets.split.map{|v| (v.to_i-X).abs}

ans = x[0]

(1..(n-1)).each do |i|
  ans = gcd(ans, x[i])
end

puts ans