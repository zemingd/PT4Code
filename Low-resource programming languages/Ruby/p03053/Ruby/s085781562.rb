H, W = gets.split.map(&:to_i)
cell = H.times.map{gets.split("")}

painted = []
H.times do |h|
  W.times do |w|
    painted << [h, w] if cell[h][w] == '#'
  end
end

ans = 0
until painted.empty?
  to_be_painted = []
  painted.each do |blackcell|
    [[1, 0], [0, 1], [-1, 0], [0, -1]].each do |dy, dx|
      nh = blackcell[0] + dy
      nw = blackcell[1] + dx
      if 0 <= nh and nh < H and 0 <= nw and nw < W and cell[nh][nw] == '.'
        cell[nh][nw] = '#'
        to_be_painted << [nh, nw]
      end
    end
  end
  painted = to_be_painted
  ans += 1 unless painted.empty?
end
puts ans