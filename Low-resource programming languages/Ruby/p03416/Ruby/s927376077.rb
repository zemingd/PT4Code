a, b = gets.split.map(&:to_i)
cnt = 0
(a..b).each do |i|
  s = i.to_s
  cnt += 1 if s[0..1] == s[3..4].reverse
end
puts cnt
