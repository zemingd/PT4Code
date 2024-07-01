n = gets.to_i
d = gets.split.map(&:to_i)
ans = 0
d.combination(2).each do |c|
  ans += c[0] * c[1]
end
puts ans
