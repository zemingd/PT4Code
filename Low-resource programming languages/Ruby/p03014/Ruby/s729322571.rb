h, w = gets.split.map(&:to_i)
graph = h.times.map{ gets.rstrip.split('') }

right = Array.new(h){Array.new(w){0}}
left  = Array.new(h){Array.new(w){0}}
up    = Array.new(h){Array.new(w){0}}
down  = Array.new(h){Array.new(w){0}}

#
0.upto(h-1) do | i |   # 縦軸
  cnt = 0
  0.upto(w-1) do | j | # 横軸
    if graph[i][j] == '#'
      cnt = 0
    else
      cnt += 1
      right[i][j] = cnt
    end
  end
end
#p '---'
#right.each{ |a| p a }

#
0.upto(h-1) do | i |   # 縦軸
  cnt = 0
  (w-1).downto(0) do | j | # 横軸
    if graph[i][j] == '#'
      cnt = 0
    else
      cnt += 1
      left[i][j] = cnt
    end
  end
end
#p '---'
#left.each{ |a| p a }

#
0.upto(w-1) do | j | # 横軸
  cnt = 0
  0.upto(h-1) do | i |   # 縦軸
    if graph[i][j] == '#'
      cnt = 0
    else
      cnt += 1
      up[i][j] = cnt
    end
  end
end
#p '---'
#up.each{ |a| p a }

#
0.upto(w-1) do | j | # 横軸
  cnt = 0
  (h-1).downto(0) do | i |   # 縦軸
    if graph[i][j] == '#'
      cnt = 0
    else
      cnt += 1
      down[i][j] = cnt
    end
  end
end
#p '---'
#down.each{ |a| p a }

#
max = 0
0.upto(h-1) do | i |   # 縦軸
  0.upto(w-1) do | j | # 横軸
    next if graph[i][j] == '#'
    max = right[i][j] + left[i][j] + up[i][j] + down[i][j] - 3 > max ? right[i][j] + left[i][j] + up[i][j] + down[i][j] : max
  end
end
p max