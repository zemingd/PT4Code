W, H, N = gets.split.map(&:to_i)
left, right = [0, 0], [W, H]
N.times do |i|
  x, y, a = gets.split.map(&:to_i)
  case a
  when 1
    left[0] = [left[0], x].max
  when 2
    right[0] = [right[0], x].min
  when 3
    left[1] = [left[1], y].max
  when 4
    right[1] = [right[1], y].min
  end
end
puts [right[0] - left[0], 0].max * [right[1] - left[1]].max
