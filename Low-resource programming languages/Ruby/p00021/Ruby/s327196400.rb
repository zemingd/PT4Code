n = gets.to_i

n.times do
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.split.map(&:to_f)

  a_radian = Math.atan2(x2 - x1, y2 - y1)
  b_radian = Math.atan2(x4 - x3, y4 - y3)

  if a_radian == b_radian
    puts 'YES'
  else
    puts 'NO'
  end
end