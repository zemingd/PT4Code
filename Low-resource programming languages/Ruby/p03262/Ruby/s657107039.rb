N, X = gets.chomp.split().map(&:to_i)

x = []
gets.chomp.split().each do |s|
  x << (X - s.to_i).abs
end

ans = x.shift
x.each do |i|
  ans = ans.gcd(i)
end

puts ans
