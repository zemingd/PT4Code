N = gets.chomp.to_i
input = gets.chomp.split.map(&:to_i)
ans = 0
input.combination(2) do |a, b|
  gcd = a.gcd(b)
  ans = gcd if gcd > ans
end
puts ans
