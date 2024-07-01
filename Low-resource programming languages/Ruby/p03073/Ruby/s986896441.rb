s = gets.chomp.chars

ans_a = ans_b = 0

s.size.times do |i|
  c = s[i].to_i
  ans_a += 1 if i.even? && c == 0 || i.odd? && c == 1
end

s.size.times do |i|
  c = s[i].to_i
  ans_b += 1 if i.even? && c == 1 || i.odd? && c == 0
end

puts ans_a <= ans_b ? ans_a : ans_b
