s = gets
ans = 0
s.chars.each do |op|
  ans += 1 if op == '+'
  ans -= 1 if op == '-'
end

puts ans