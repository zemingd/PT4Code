H, W = gets.split.map(&:to_i)
board = H.times.map { gets.chomp.chars }

queue = []
board.each.with_index do |row, i|
  row.each.with_index do |col, j|
    queue.push([i, j]) if col == '#'
  end
end

current_size = queue.size
next_size = 0
t_count = 0
turned = false
count = 0
while !queue.empty?
  i, j = queue.shift
  t_count += 1
  if i > 0 && board[i - 1][j] == '.'
    board[i - 1][j] = '#'
    queue.push([i - 1, j])
    next_size += 1
    turned = true
  end
  if i < H - 1 && board[i + 1][j] == '.'
    board[i + 1][j] = '#'
    queue.push([i + 1, j])
    next_size += 1
    turned = true
  end
  if j > 0 && board[i][j - 1] == '.'
    board[i][j - 1] = '#'
    queue.push([i, j - 1])
    next_size += 1
    turned = true
  end
  if j < W - 1 && board[i][j + 1] == '.'
    board[i][j + 1] = '#'
    queue.push([i, j + 1])
    next_size += 1
    turned = true
  end
  if t_count == current_size
    current_size = next_size
    if turned
      count += 1
    end
    next_size = 0
    turned = false
    t_count = 0
  end
end
puts count
