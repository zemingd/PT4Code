x, y = gets.chomp.split(" ").map(&:to_i)
cal_x = x - 1
cal_y = y - 1
sum = 0

while cal_x > 0 do
  sum += cal_x
  cal_x -= 1
end

while cal_y > 0 do
  sum += cal_y
  cal_y -= 1
end

puts sum
