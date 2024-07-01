W, H, N = gets.split.map(&:to_i)
left, right = [0, 0], [W, H]
N.times do |i|
  x, y, a = gets.split.map(&:to_i)
  if a == 1
    left[0] = [left[0], x].max
  elsif a == 2
    right[0] = [right[0], x].min
  elsif a == 3
    left[1] = [left[1], y].max
  elsif a == 4
    right[1] = [right[1], y].min
  end
end
puts [(right[0] - left[0]) * (right[1] - left[1]), 0].max
