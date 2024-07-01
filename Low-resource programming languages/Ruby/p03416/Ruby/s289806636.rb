a, b = gets.split.map(&:to_i)

ans = 0
(a..b).each do |x|
  ans += 1 if x.to_s == x.to_s.reverse 
end
puts ans
