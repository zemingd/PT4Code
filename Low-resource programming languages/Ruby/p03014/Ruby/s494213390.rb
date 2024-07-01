h, w = gets.split.map(&:to_i)
graph = h.times.map{ gets.rstrip.split('') }

#
horizontal = Array.new(h){Array.new(w){nil}}
0.upto(h-1).each do | i |   # 縦軸
  0.upto(w-1).each do | j | # 横軸
    if    graph[i][j] == '.'
      # 横軸0 or 1つ前の値が0なら何個の数字を入れるか算出
      if j == 0 or horizontal[i][j-1] == 0
        counter = 0
        j.upto(w-1) do | k |
          break if graph[i][k] == '#'
          counter += 1
        end
        horizontal[i][j] = counter
      else # horizontal[i][j-1] > 0 なら前の数字をコピー
        horizontal[i][j] = horizontal[i][j-1]
      end
    else #graph[i][j] == '#'
      horizontal[i][j] = 0
    end
  end
end
#horizontal.each{ |a| p a }

#
vertical = Array.new(h){Array.new(w){nil}}
0.upto(h-1).each do | i |   # 縦軸
  0.upto(w-1).each do | j | # 横軸
    if    graph[i][j] == '.'
      # 縦軸0 or 1つ前の値が0なら何個の数字を入れるか算出
      if i == 0 or vertical[i-1][j] == 0
        counter = 0
        i.upto(h-1) do | k |
          break if graph[k][j] == '#'
          counter += 1
        end
        vertical[i][j] = counter
      else # vertical[i-1][j] > 0 なら前の数字をコピー
        vertical[i][j] = vertical[i-1][j]
      end
    else #graph[i][j] == '#'
      vertical[i][j] = 0
    end
  end
end
#vertical.each{ |a| p a }

#
max = 0
0.upto(h-1).each do | i |   # 縦軸
  0.upto(w-1).each do | j | # 横軸
    if max < horizontal[i][j] + vertical[i][j] - 1
      max = horizontal[i][j] + vertical[i][j] - 1
    end
  end
end
p max