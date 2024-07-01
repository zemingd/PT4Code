s = gets.chomp
ans = 1000
(s.length - 2).times do |i|
  tmp = (s[i, 3].to_i - 753).abs
  ans = tmp if ans > tmp
end
puts ans