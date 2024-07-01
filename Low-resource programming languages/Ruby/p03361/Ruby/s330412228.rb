H, W = gets.split.map &:to_i
board = $<.map{|s|s.chomp.chars}

puts H.times.any?{|i|
  W.times.any?{|j|
    next if board[i][j] != ?#
    ![0, 1, 0, -1, 0].each_cons(2).any?{|dx, dy|
      ii = i + dy
      jj = j + dx
      ii.between?(0, H-1) && jj.between?(0, W-1) && board[ii][jj] == ?#
    }
  }
} ? :No : :Yes
