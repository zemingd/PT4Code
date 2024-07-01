h,w = gets.split.map(&:to_i)
board = h.times.map{ gets.chomp.split('') }
dx=[-1,0,1,0]
dy=[0,1,0,-1]
(0..h-1).each do |i|
  (0..w-1).each do |j|
    next if board[i][j] == '.'

    (0..3).each do |k|
      x = i + dx[k]
      y = j + dy[k]
      next if (x < 0 || x >= h)
      next if (y < 0 || y >= w)

      if board[x][y] == '#'
        board[x][y] = 'b'
        board[i][j] = 'b'
      end
    end
  end
end
puts board.flatten.include?('#') ? 'No' : 'Yes'