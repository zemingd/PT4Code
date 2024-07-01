h,w = gets.split.map(&:to_i)
board = h.times.map{ gets.chomp.split('') }
dx=[-1,0,1,0]
dy=[0,1,0,-1]
(0..h-1).each do |i|
  (0..w-1).each do |j|
    next if board[i][j] == '.'

    b_cnt = 0
    (0..3).each do |k|
      x = i + dx[k]
      y = j + dy[k]
      next if (x < 0 || x >= h)
      next if (y < 0 || y >= w)

      b_cnt += 1 if board[x][y] == '#'
    end
    if b_cnt == 0
      puts 'No'
      exit 0
    end
  end
end
puts 'Yes'