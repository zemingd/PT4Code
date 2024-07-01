h, w = gets.chomp.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }
(0...h).each do |x|
  (0...w).each do |y|
    next if s[x][y] == "."
    flg = false
    [[x - 1, y], [x + 1, y], [x, y - 1], [x, y + 1]].each do |nx, ny|
      next if nx < 0 || ny < 0 || nx >= h || ny >= w
      flg = true if s[nx][ny] == "#"
    end
    if flg == false
      puts "No"
      exit
    end
  end
end
puts "Yes"