#n = gets.chomp.to_i
h,w = gets.chomp.split().map(&:to_i)

grid = Array.new(h){Array.new(w, -1)}
q = []
h.times do |i|
  line = gets.chomp.split(//)
  w.times do |j|
    if line[j] == '#'
      grid[i][j] = 0
      q.push [i,j, 0]
    end
  end
end
#p grid

cost = 0
until q.empty?
  y,x = q.shift
  cost = grid[y][x] + 1
  if 0 != y && grid[y-1][x] == -1
    grid[y-1][x] = cost
    q.push [y-1, x]
  end
  if y != h-1 && grid[y+1][x] == -1
    grid[y+1][x] = cost
    q.push [y+1, x]
  end
  if 0 != x && grid[y][x-1] == -1
    grid[y][x-1] = cost
    q.push [y, x-1]
  end
  if x != w-1 && grid[y][x+1] == -1
    grid[y][x+1] = cost
    q.push [y, x+1]
  end
end

puts cost - 1