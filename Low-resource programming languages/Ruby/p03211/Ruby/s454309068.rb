s = gets.chomp
ans = 999
(s.size - 2).times do |i|
  x = s[i,3].to_i
  ans = (753 - x).abs if ans > (753 - x).abs
end
puts ans

