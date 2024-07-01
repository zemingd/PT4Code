h,w = gets.split.map(&:to_i)
a = h.times.map do
  gets.chomp.chars
end

total = h*w

b = h.times.map{[nil]*w}

(0...h).each do |y|
  n1 = nil
  n2 = nil
  (0...w).each do |x|
    if a[y][x] == "#"
      n1 = 0
      b[y][x] = 0
    elsif n1 != nil
      n1 += 1
      if b[y][x].nil?
        b[y][x] = n1
      else
        b[y][x] = [b[y][x], n1].min
      end
    end
    if a[y][w-1-x] == "#"
      n2 = 0
      b[y][w-1-x] = 0
    elsif n2 != nil
      n2 += 1
      if b[y][w-1-x].nil?
        b[y][w-1-x] = n2
      else
        b[y][w-1-x] = [b[y][w-1-x], n2].min
      end
    end
  end
end

(0...w).each do |x|
  n1 = nil
  n2 = nil
  (0...h).each do |y|
    if a[y][x] == "#"
      n1 = 0
    elsif n1 != nil
      n1 += 1
      if b[y][x].nil?
        b[y][x] = n1
      else
        b[y][x] = [b[y][x], n1].min
      end
    end
    if a[h-1-y][x] == "#"
      n2 = 0
    elsif n2 != nil
      n2 += 1
      if b[h-1-y][x].nil?
        b[h-1-y][x] = n2
      else
        b[h-1-y][x] = [b[h-1-y][x], n2].min
      end
    end
  end
end

(0...h).each do |y|
  (0...w).each do |x|
    xvv = []
    xvv << b[y][x-1] if x > 0
    xvv << b[y][x+1] if x < w-1
    xv = xvv.compact.min
    yvv = []
    yvv << b[y-1][x] if y > 0
    yvv << b[y+1][x] if y < h-1
    yv = yvv.compact.min
    b[y][x] = [b[y][x], xv+yv].compact.min
  end
end

puts b.flatten.max
