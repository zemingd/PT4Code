H, W = gets.split.map(&:to_i)
C = H * W

grid = []
d_count = 0

dark_cell = []
H.times do |i|
  r = gets.chomp.split(//)
  r.each_with_index.select { |d, index| d == '#' }.map { |pair| pair[1] }.each do |idx|
    dark_cell << [i, idx]
  end
  d_count += r.count('#')
  grid << r
end

count = 0
while d_count < C
  new_dark_cell = []

  dark_cell.each do |d|
    y = d[0]
    x = d[1]

    # left
    if x - 1 >= 0
      if grid[y][x - 1] == '.'
        d_count += 1
        grid[y][x - 1] = '#'
        new_dark_cell << [y, x - 1]
      end
    end

    # right
    if x + 1 < W
      if grid[y][x + 1] == '.'
        d_count += 1
        grid[y][x + 1] = '#'
        new_dark_cell << [y, x + 1]
      end
    end

    # up
    if y - 1 >= 0
      if grid[y - 1][x] == '.'
        d_count += 1
        grid[y - 1][x] = '#'
        new_dark_cell << [y - 1, x]
      end
    end

    # bottom
    if y + 1 < H
      if grid[y + 1][x] == '.'
        d_count += 1
        grid[y + 1][x] = '#'
        new_dark_cell << [y + 1, x]
      end
    end
  end

  dark_cell = new_dark_cell
  count += 1
end

puts count