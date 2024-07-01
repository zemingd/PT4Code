h, w = readline.split.map(&:to_i)

grid = []
h.times { grid.push(readline) }

def in?(x, h, y, w)
    return 0 <= x && x < h && 0 <= y && y < w
end

dx = [-1,0,1,0]
dy = [0,1,0,-1]

ok = true
h.times do |i|
    w.times do |j|
        temp = grid[i][j] == '.'
        4.times do |k|
            x = i + dx[k]
            y = j + dy[k]
            temp |= in?(x, h, y, w) && grid[x][y] == '#'
        end
        ok &= temp
    end
end

puts ok ? 'Yes' : 'No'