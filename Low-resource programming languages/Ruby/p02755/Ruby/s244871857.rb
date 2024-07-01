a,b = gets.chomp.split(' ').map(&:to_i)
a_l = a / 0.08
a_r = (a + 1) / 0.08
b_l = b / 0.1
b_r = (b + 1) / 0.1
if a_r.round - a_r == 0
  a_r -= 0.1
end
if b_r.round - b_r == 0
  b_r -= 0.1
end
ans = ((a_l.ceil..a_r.round).to_a & (b_l.ceil..b_r.round).to_a).min
if ans
  puts ans
else
  puts -1
end
