H, W = gets.split.map(&:to_i)
INFINITY = 999999999

dark = []
max_hw = Array.new(H) { Array.new(W, INFINITY) }

H.times do |i|
  gets.chomp.each_char.with_index do |c, idx|
    if c == '#'
      dark.unshift([i, idx, 0])
      max_hw[i][idx] = 0
    end
  end
end

p dark

count = 0

while !dark.empty?
  y, x, count = dark.shift
  count += 1

  # up
  if y != 0
    if max_hw[y - 1][x] == INFINITY
      max_hw[y - 1][x] = count
      dark << [y - 1, x, count]
    end
  end

  # bottom
  if y + 1 < H
    if max_hw[y + 1][x] == INFINITY
      max_hw[y + 1][x] = count
      dark << [y + 1, x, count]
    end
  end

  # left
  if x != 0
    if max_hw[y][x - 1] == INFINITY
      max_hw[y][x - 1] = count
      dark << [y, x - 1, count]
    end
  end

  # right
  if x + 1 < W
    if max_hw[y][x + 1] == INFINITY
      max_hw[y][x + 1] = count
      dark << [y, x + 1, count]
    end
  end
end

puts count - 1