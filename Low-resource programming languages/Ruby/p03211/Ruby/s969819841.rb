s = gets.chomp
ans = 10000
(s.size - 2).times do |i|
  ans = [ans, (753 - s[i..i+2].to_i).abs].min
end
puts ans