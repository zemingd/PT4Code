h,w=gets.split(' ').map(&:to_i)
#tajigen = Array.new(4) { Array.new(2,0) }

#maze = Array.new(h){ Array.new(w,0)}
=begin
maze = Array.new(h, Array.new(w, "a") )

for i in 0..h-1
  string = gets.chomp
  for j in 0..w-1
    #puts string[j]
    maze[i][j]=string[j]
  end
end

=end
maze = h.times.map { gets.chomp }
#maze = h.times.map {gets.chomp}
#puts s[1][5]
#puts maze
inf = 100000000
dp = Array.new(h*w){ Array.new(h*w,inf)}
#puts dp
dx=[1,0,-1,0]
dy=[0,-1,0,1]
for i in 0..h-1
  for j in 0..w-1

    if maze[i][j] == '.'
      dp[i*w+j][i*w+j]=0
      for k in 0..3
        ax = j+dx[k]
        ay = i+dy[k]
        if ax<0||ax>=w||ay<0||ay>=h
          next
        end
        if (maze[ay][ax]=='.')
          dp[i*w+j][ay*w+ax]=1
          dp[ay*w+ax][i*w+j]=1
        end
      end
    end
  end
end
#puts maze[0][1]
#puts dp[0][1]
#puts dp[1][0]
#puts dp

for k in 0..h*w-1
  for y in 0..h*w-1
    for x in 0..h*w-1
      if dp[y][x]> dp[y][k]+dp[k][x]
        dp[y][x] = dp[y][k]+dp[k][x]
      end
    end
  end
end

ans = 0
for i in 0..h*w-1
  for j in 0..h*w-1
    if dp[i][j]!=inf
      ans = dp[i][j] if dp[i][j] > ans
    end
  end
end
puts ans