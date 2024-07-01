a, b = gets.chomp.split(" ").map(&:to_i)
ans = 0
(a..b).each do |i|
  x = i.to_s
  ans += 1 if x == x.reverse
end
puts ans