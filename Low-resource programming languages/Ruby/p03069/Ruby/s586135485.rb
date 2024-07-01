n = gets.chomp.to_i
s = gets.chomp

cnt_w = 0
cnt_b = 0

n.times do |i|
  if s[i] == '.'
    cnt_w += 1
  else
    cnt_b += 1 
  end
end
puts cnt_w - cnt_b > 0 ? cnt_b : cnt_w
