a,b = gets.split.map(&:to_i)

ans = 0
(a..b).each do |i|
  s = i.to_s
  ans += 1 if s == s.reverse
end

puts ans

