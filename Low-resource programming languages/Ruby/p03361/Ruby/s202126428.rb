H, W = gets.split.map(&:to_i)
board = H.times.map { gets.chomp.chars }
is_ok = H.times.all? do |i|
  W.times.all? do |j|
    cell = board[i][j]
    next true if cell == '.'
    next true if i > 0 && board[i - 1][j] == '#'
    next true if j < W - 1 && board[i][j + 1] == '#'
    next true if i < H - 1 && board[i + 1][j] == '#'
    next true if j > 0 && board[i][j - 1] == '#'
    false
  end
end
puts(is_ok ? 'Yes' : 'No')
