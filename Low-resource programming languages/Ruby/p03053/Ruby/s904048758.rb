H, W = gets.chomp.split(" ").map(&:to_i)

que = []
visited = Array.new(H){Array.new(W, false)}
H.times do |i|
  row = gets.chomp
  W.times do |j|
    if row[j] == "#"
      que << [i, j]
    end
  end
end

di = [-1, 0, 1, 0]
dj = [0, 1, 0, -1]

ans = 0
que2 = []
while !que.empty?
  que2 = que.clone
  que = []
  que2.each do |i, j|
    visited[i][j] = true
    4.times do |d|
      ni = i + di[d]
      nj = j + dj[d]
      if ni >= 0 && ni < H && nj >= 0 && nj < W && !visited[ni][nj]
        que << [ni, nj]
      end
    end
  end
  ans += 1
end

puts ans - 1
