s = gets.chomp
n = 0
(s.size-2).times do |i|
  t = s[i, 3].to_i
  n = t if (753-t).abs < (753-n).abs
end
p (753-n).abs