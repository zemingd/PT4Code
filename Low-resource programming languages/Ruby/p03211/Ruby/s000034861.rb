s = gets.chomp

ans = 753
(0..s.size - 3).each do |i|
  ans = [ans, (753 - s[i, 3].to_i).abs].min
end
puts ans
