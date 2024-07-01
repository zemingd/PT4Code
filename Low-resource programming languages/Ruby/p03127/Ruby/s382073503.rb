n = gets.to_i
a = gets.split.map(&:to_i)
result = a[0]
(1..n-1).each do |i|
  result.gcd(a[i])
end
puts result
