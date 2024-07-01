
def in_range(x, y)
  x.between?(0, H-1) && y.between?(0, W-1)
end

def dfs(starts)
  que = []
  d = Array.new(H).map { Array.new(W, INF) }
  starts.each do |x, y|
    d[x][y] = 0
    que << [x, y]
  end
  until que.empty?
    q = que.shift
    MOVE.each do |m|
      nx = q[0] + m[0]
      ny = q[1] + m[1]
      if in_range(nx, ny) && C[nx][ny] != '#' && d[nx][ny] == INF
        d[nx][ny] = d[q[0]][q[1]] + 1
        que << [nx, ny]
      end
    end
  end
  
  u = d.flatten.uniq
  u.delete(INF) if u.include?(INF)
  u.max
end

INF = 10**9
MOVE = [[0, -1], [1, 0], [0, 1], [-1, 0]]
H, W = gets.chomp.split.map(&:to_i)
C = []
starts = []
H.times do |i|
  row =  gets.chomp
  C << row
  if row.include?('#')
    row.split('').each_with_index do |s, j|
      starts << [i,j] if s == '#'
    end
  end
end

puts dfs(starts)