#n = gets.chomp.to_i
h,w = gets.chomp.split().map(&:to_i)

grid = []
h.times do
  grid.push gets.chomp.split(//).map(&:to_sym)
end

q = []
h.times do |i|
  w.times do |j|
    if grid[i][j] == :'#'
      q.push [i,j, 0]
    end
  end
end

dy = [0, 1, 0, -1]; dx = [1, 0, -1, 0]
ans = 0
count = 0
until q.empty?
  y,x,cost = q.shift
  if 0 < y && grid[y-1][x] != :'#'
    grid[y-1][x] = :'#'
    q.push [y-1, x, cost+1]
    ans = cost+1 if ans < cost+1
  end
  if y < h-1 && grid[y+1][x] != :'#'
    grid[y+1][x] = :'#'
    q.push [y+1, x, cost+1]
    ans = cost+1 if ans < cost+1
  end
  if 0 < x && grid[y][x-1] != :'#'
    grid[y][x-1] = :'#'
    q.push [y, x-1, cost+1]
    ans = cost+1 if ans < cost+1
  end
  if x < w-1 && grid[y][x+1] != :'#'
    grid[y][x+1] = :'#'
    q.push [y, x+1, cost+1]
    ans = cost+1 if ans < cost+1
  end
end

puts ans
