def bfs(ini, g)
  dist = Array.new(g.length,-1)
  dist[ini] = 0
  queue = [ini]
  while !queue.empty?
    v = queue[0]
    queue.shift
    g[v].each{|des|
      if dist[des] == -1
        dist[des] = dist[v] + 1
        queue.push(des)
      end
     }
   end
   dist.max
end

h,w=gets.chomp.split(" ").map(&:to_i);

wall = "##"
for i in 0..w-1
  wall += "#"
end

s = Array.new(h+2, wall)

for i in 1..h
  s[i] = "#" + gets.chomp + "#"
end

v = h * w
g = Array.new(v).map{Array.new}

for i in 1..h
  for j in 1..w
    if s[i][j] == "."
      if s[i-1][j] == "."
        g[(i-1)*w+(j-1)].push((i-2)*w+(j-1))
      end
      if s[i][j-1] == "."
        g[(i-1)*w+(j-1)].push((i-1)*w+(j-2))
      end
      if s[i][j+1] == "."
        g[(i-1)*w+(j-1)].push((i-1)*w+j)
      end
      if s[i+1][j] == "."
        g[(i-1)*w+(j-1)].push(i*w+(j-1))
      end
    end
  end
end
ans = 0
for i in 0..v-1
  calc_min = bfs(i,g)
  if ans < calc_min
    ans = calc_min
  end
end

p ans