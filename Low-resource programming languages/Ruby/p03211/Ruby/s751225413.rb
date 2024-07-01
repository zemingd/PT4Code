s = gets.chomp
ret = 999
(s.size - 2).times do |i|
  tmp_ret = (753 - (s[i...i+3]).to_i).abs
  ret = tmp_ret if tmp_ret < ret
end
puts ret
