H, W = gets.split.map(&:to_i)
map = []
pos = []
H.times do |i|
  map << gets.chomp.chars
  pos << []
  W.times do
    pos[i] << [0, 0] # [Hight,  Width]
  end
end

ans = 0

y = 0
while y < H
  x = 0
  while x < W
    if map[y][x] == '.'
      if pos[y][x][0] == 0
        # 下見る
        y1 = y
        while y1 < H
          if map[y1][x] == '.'
            y1 += 1
          else
            break
          end
        end
        y.upto(y1-1) do |i|
          pos[i][x][0] = y1 - y
        end
      end

      if pos[y][x][1] == 0
        # 右見る
        x1 = x
        while x1 < W
          if map[y][x1] == '.'
            x1 += 1
          else
            break
          end
        end
        x.upto(x1-1) do |i|
          pos[y][i][1] = x1 - x
        end
      end

      tmp = pos[y][x][0] + pos[y][x][1] - 1
      ans = tmp if ans < tmp
      if ans == W + H - 1
        puts ans
        exit
      end
    end
    x += 1
  end
  y += 1
end

puts ans