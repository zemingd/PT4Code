s = gets.chomp

ans_a = ans_b = 0

s.length.times do |i|
  c = s[i].to_i

  if i.even?
    ans_a += 1 if c == 0
    ans_b += 1 if c == 1
  else
    ans_a += 1 if c == 1
    ans_b += 1 if c == 0
  end
end

puts ans_a <= ans_b ? ans_a : ans_b
