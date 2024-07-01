H, W = gets.split.map(&:to_i)
board = H.times.map { gets.chomp.chars }
horizontal_sum_list = []
board.each do |row|
  l = r = nil
  sum_list = Array.new(W)
  row.each.with_index do |ch, i|
    if ch == '#'
      if l != nil && r != nil
        count = r - l
        (l..r).each do |ii|
          sum_list[ii] = count
        end
      end
      l = r = nil
    else
      l = l ? l : i
      r = r ? r + 1 : i
      if i == W - 1
        count = r - l
        (l..r).each do |ii|
          sum_list[ii] = count
        end
      end
    end
  end
  horizontal_sum_list.push(sum_list)
end

vertical_sum_list = []
board.transpose.each do |row|
  l = r = nil
  sum_list = Array.new(W)
  row.each.with_index do |ch, i|
    if ch == '#'
      if l != nil && r != nil
        count = r - l
        (l..r).each do |ii|
          sum_list[ii] = count
        end
      end
      l = r = nil
    else
      l = l ? l : i
      r = r ? r + 1 : i
      if i == H - 1
        count = r - l
        (l..r).each do |ii|
          sum_list[ii] = count
        end
      end
    end
  end
  vertical_sum_list.push(sum_list)
end
vertical_sum_list = vertical_sum_list.transpose

ans = 0
H.times do |i|
  W.times do |j|
    if board[i][j] == '.'
      sum = horizontal_sum_list[i][j] + vertical_sum_list[i][j] + 1
      ans = sum if sum > ans
    end
  end
end
puts ans
