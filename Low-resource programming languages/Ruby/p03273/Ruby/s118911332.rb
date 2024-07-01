h, w = gets.split.map(&:to_i)
a = []
rh, rw = [], []

h.times do |y|
  a[y] = gets.chomp

  if a[y].count('.') == w
    rh[y] = true
  end
end

w.times do |x|
  cnt = 0

  h.times do |y|
    if a[y][x] == '.'
      cnt += 1
    end
  end

  if cnt == h
    rw[x] = true
  end
end

h.times do |y|
  if rh[y].nil?
    w.times do |x|
      if rw[x].nil?
        print a[y][x]
      end
    end

    puts
  end
end
