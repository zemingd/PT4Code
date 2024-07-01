n = gets.to_i
s = gets.chomp.chars.map do |x|
  if x == "E"
    1
  else
    0
  end
end
right_one_num = s.sum
left_zero_num = 0
min = n + 1
s.each do |x|
  if x == 1#必要なら右側の1のカウントを減らす。
    right_one_num -= 1
  end
  if min > right_one_num + left_zero_num
    min = right_one_num + left_zero_num
  end
  if x == 0#次からはこの0もカウントに入れる。
    left_zero_num += 1
  end
end
puts min
