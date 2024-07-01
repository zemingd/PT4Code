_ = gets.to_i
a = gets.split.map(&:to_i)

b = []
b[0] = a[0]
(1..a.length-1).each do |i|
  b[i] = b[i-1].gcd(a[i])
end
c = []
c[a.length-1] = a[-1]
(2..a.length).each do |i|
  c[a.length-i] = c[a.length-i+1].gcd(a[a.length-i])
end

result = (0..a.length-1).map do |i|
  if i == 0
    c[i+1]
  elsif i == a.length-1
    b[i-1]
  else
    b[i-1].gcd(c[i+1])
  end
end.max

puts result
