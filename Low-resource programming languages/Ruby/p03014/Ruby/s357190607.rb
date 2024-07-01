h, w = gets.split.map(&:to_i)

s = h.times.map do
  gets.chomp
end

hh = (0...h).map do |y|
  hl = []
  x = 0
  while x < w
    if s[y][x] == '#'
      hl[x] = 0
      x += 1
    else
      n = 0
      xs = x
      while x < w && s[y][x] == '.'
        n += 1
        x += 1
      end
      (xs...x).each {|i| hl[i] = n}
    end
  end
  hl
end

ww = (0...w).map do |x|
  wl = []
  y = 0
  while y < h
    if s[y][x] == '#'
      wl[y] = 0
      y += 1
    else
      n = 0
      ys = y
      while y < h && s[y][x] == '.'
        n += 1
        y += 1
      end
      (ys...y).each {|i| wl[i] = n}
    end
  end
  wl
end

result = (0...h).map do |y|
  (0...w).map do |x|
    hh[y][x] + ww[x][y]
  end.max
end.max
      
puts result - 1

