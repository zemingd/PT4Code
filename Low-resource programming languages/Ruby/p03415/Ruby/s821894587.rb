board = 3.times.map { gets.chomp.chars }
ans = board[0][0] + board[1][1] + board[2][2]
puts ans
