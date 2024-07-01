h, w = gets.split.map(&:to_i)
s = []
h.times do
    s << gets.chomp.chars
end

def calc_dist(h, w, s, x, y)
  ans = 0
  dist = Array.new(h){Array.new(w, -1)}
  dist[x][y] = 0
  queue = [[x, y]]

  dh = [1, 0, -1, 0]
  dw = [0, 1, 0, -1]
  until queue.empty?
    px, py = queue.shift
    ans = ans > dist[px][py] ? ans : dist[px][py]
    # p sprintf("search from [%d, %d]", px, py)

    4.times do |i|
      nx = px+dh[i]
      ny = py+dw[i]
      # p sprintf("  next [%d, %d]", nx, ny)

      next if nx < 0 || nx >= h || ny < 0 || ny >= w
      next if s[nx][ny] == '#'
      if dist[nx][ny] == -1
        # p sprintf("  ok for [%d, %d]", nx, ny)
        dist[nx][ny] = dist[px][py]+1
        queue.push([nx, ny])
      end
    end
  end

  return ans
end

max_dist = 0
for sh in 0..h-1
  for sw in 0..w-1
    if s[sh][sw] != '#'
      dist = calc_dist(h, w, s, sh, sw)
      max_dist = dist > max_dist ? dist : max_dist
      # p sprintf("x=%d y=%d dist=%d max=%d", sh, sw, dist, max_dist)
    end
  end
end

puts max_dist

