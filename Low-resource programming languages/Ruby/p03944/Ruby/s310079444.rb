W, H, N = gets.split.map(&:to_i)
xya_list = N.times.map { gets.split.map(&:to_i) }
min_x = 0
max_x = W
min_y = 0
max_y = H
xya_list.each do |(x, y, a)|
  case a
  when 1
    min_x = x if x > min_x
  when 2
    max_x = x if x < max_x
  when 3
    min_y = y if y > min_y
  when 4
    max_y = y if y < max_y
  end
end
ans = [max_x - min_x, 0].max * [max_y - min_y, 0].max
puts ans
