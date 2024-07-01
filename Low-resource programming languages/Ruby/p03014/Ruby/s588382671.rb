start_time = Time.now

mass = readlines.map(&:chop)
H, W = mass.shift.split.map(&:to_i)

wide_map = Array.new(H) { Array.new(W, 0) }
H.times do |h|
  w = 0
  while w < W
    if mass[h][w] == '#'
      w += 1
      next
    end
    ct = 1
    ct += 1 while w + ct < W && mass[h][w + ct] == '.'
    ct.times { |c| wide_map[h][w + c] = ct }
    w += ct + 1
  end
end

W.times do |w|
  h = 0
  while h < H
    if mass[h][w] == '#'
      h += 1
      next
    end
    ct = 1
    ct += 1 while h + ct < H && mass[h + ct][w] == '.'
    ct.times { |c| wide_map[h + c][w] += ct - 1 }
    h += ct + 1
  end
end
puts wide_map.flatten.max
