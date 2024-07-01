h, w = gets.split.map(&:to_i)
grid = []
h.times { grid << gets.chomp.split("") }
# 終点のみ、横に照らせるマス目の数をメモする
horizontal_sums = Array.new(h) { Array.new(w) }
# 終点のみ、縦に照らせるマス目の数をメモする
vertical_sums = Array.new(h) { Array.new(w) }

current_vertical = Array.new(w, 0)
(0...h).each do |r|
  current_row = grid[r]
  current_horizontal_sum = horizontal_sums[r]
  current_horizontal = 0
  previous_vertical_sum = vertical_sums[r - 1]
  current_vertical_sum = vertical_sums[r]
  (0...w).each do |c|
    if current_row[c] == "."
      current_horizontal += 1
      current_vertical[c] += 1
    else
      current_horizontal_sum[c - 1] = current_horizontal
      current_horizontal_sum[c] = 0
      current_horizontal= 0
      previous_vertical_sum[c] = current_vertical[c]
      current_vertical_sum[c] = 0
      current_vertical[c] = 0
    end
  end
  current_horizontal_sum[w - 1] = current_horizontal
end
vertical_sums[h - 1] = current_vertical

max = 0
current_vertical = vertical_sums[h - 1]
(h - 1).downto(0) do |r|
  current_horizontal_sum = horizontal_sums[r]
  current_horizontal = current_horizontal_sum.last
  current_vertical_sum = vertical_sums[r]
  (w - 1).downto(0) do |c|
    tmp = -1
    current_horizontal = current_horizontal_sum[c] || current_horizontal
    current_vertical[c] = current_vertical_sum[c] || current_vertical[c]
    tmp += current_horizontal
    tmp += current_vertical[c]
    max = tmp if max < tmp
  end
end
puts max
