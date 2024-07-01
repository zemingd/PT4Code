H, W = gets.split.map(&:to_i)
board = H.times.map { gets.chomp.chars.take(W) }
board = board.reject { |row| row.all? { |c| c == '.'} }
board = board.transpose.reject { |row| row.all? { |c| c == '.'} }
ans = board.transpose.map { |row| row.join('') }.join("\n")
puts ans