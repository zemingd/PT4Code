R = gets.to_i

ans = 'AGC'
ans = 'ARC' if R < 2800
ans = 'ABC' if R < 1200

puts ans
