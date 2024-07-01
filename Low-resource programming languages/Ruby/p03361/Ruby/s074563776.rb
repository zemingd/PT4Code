H, W = gets.split.map(&:to_i)
board = H.times.map { gets.chomp.chars }
H.times do |i|
  W.times do |j|
    next unless board[i][j] == '#'
    is_ok = (i == 0 || board[i - 1][j] == '#') ||
      (i == H - 1 || board[i + 1][j] == '#') ||
      (j == 0 || board[i][j - 1] == '#') ||
      (j == W - 1 || board[i][j + 1] == '#')
    unless is_ok
      puts 'No'
      exit 0
    end
  end
end
puts 'Yes'
