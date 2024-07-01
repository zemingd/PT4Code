s = gets.chomp.chars
count = 0
digits3 = []
(0..s.size-3).each do |num|
  digits3 << (s[num]+s[num+1]+s[num+2]).to_i
end
abs = []
digits3.each do |num|
  abs << (753 - num).abs
end
puts abs.min