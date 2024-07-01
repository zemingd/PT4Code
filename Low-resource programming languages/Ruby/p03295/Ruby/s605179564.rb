n, m = gets.split.map(&:to_i)
uf = {}

m.times do
  x1, y = gets.split.map(&:to_i)
  y1 = y - 1

  (x2, y2), _ = uf.find{|(a, b), _| x1 <= b && a <= y1}
  if x2.nil? && y2.nil?
    uf[[x1, y1]] = 1
  else
    # if (x1 - y1).abs <= (x2 - y2).abs
    #   uf[[x1, y1]] = uf[[x2, y2]] + 1
    #   uf.delete([x2, y2])
    # else
    #   uf[[x2, y2]] += 1
    # end
    if x1 <= x2 && y2 <= y1
      uf[[x2, y2]] += 1
    else
      x3 = [x1, x2].max
      y3 = [y1, y2].min
      uf[[x3, y3]] = uf[[x2, y2]] + 1
      uf.delete([x2, y2])
    end
  end
end

p uf.size