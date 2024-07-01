mass = readlines.map(&:chop)

H, W = mass.shift.split.map(&:to_i)

wide_map = Array.new(H) { Array.new(W, 0) }
height_map = Array.new(H) { Array.new(W, 0) }

H.times do |h|
  W.times do |w|
    next if mass [h][w] == '#' || !wide_map[h][w].zero?
    ct = 1
    ct += 1 while w + ct < W && mass[h][w + ct] == '.'
    ct.times { |c| wide_map[h][w + c] = ct }
  end
end

W.times do |w|
  H.times do |h|
    next if mass [h][w] == '#' || !height_map[h][w].zero?
    ct = 1
    ct += 1 while h + ct < H && mass[h + ct][w] == '.'
    ct.times { |c| height_map[h + c][w] = ct }
  end
end

ans = 0
W.times do |w|
  H.times do |h|
    wide_map[h][w] += height_map[h][w] - 1
  end
end
puts wide_map.flatten.max