H, W = gets.split.map(&:to_i)
board = H.times.map { gets.chomp.chars }

board.each.with_index do |row, i|
  row.each.with_index do |col, j|
    next if col == '.'
    can_draw =
      (i > 0 && board[i - 1][j] == '#') || # 上
      (i < H - 1 && board[i + 1][j] == '#') || # 下
      (j > 0 && board[i][j - 1] == '#') || # 左
      (j < W - 1 && board[i][j + 1] == '#') # 右
    unless can_draw
      puts 'No'
      exit
    end
  end
end
puts 'Yes'
