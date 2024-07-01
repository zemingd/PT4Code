H, W = gets.split.map(&:to_i)
map = []
pos = []
H.times do |i|
  map << gets.chomp.chars
  pos[i] = []
  W.times { pos[i] << [0, 0, 0, 0] }
end

ans = 0

H.times do |i|
  W.times do |j|
    if map[i][j] == '.'
      # Left
      if j == 0
        pos[i][j][0] = 1
      else
        pos[i][j][0] = pos[i][j-1][0] + 1
      end

      # Up
      if i == 0
        pos[i][j][2] = 1
      else
        pos[i][j][2] = pos[i-1][j][2] + 1
      end

    end

    d = (H - 1) - i
    r = (W - 1) - j

    if map[d][r] == '.'
      # Right
      if r == (W - 1)
        pos[d][r][1] = 1
      else
        pos[d][r][1] = pos[d][r+1][1] + 1
      end

      # Down
      if d == (H-1)
        pos[d][r][3] = 1
      else
        pos[d][r][3] = pos[d+1][r][3] + 1
      end
    end
  end
end

H.times do |i|
  W.times do |j|
    tmp = pos[i][j].inject(:+) - 3
    ans = tmp if ans < tmp
  end
end

puts ans