h, w = gets.chomp.split.map(&:to_i)
field = []
h.times do |i|
  field[i] = gets.chomp
end

l = Array.new(h).map{Array.new(w,0)}
r = Array.new(h).map{Array.new(w,0)}
u = Array.new(h).map{Array.new(w,0)}
d = Array.new(h).map{Array.new(w,0)}

h.times do |y|
  l[y][0] = 1 if field[y][0] == '.'
  r[y][-1] = 1 if field[y][-1] == '.'
  (1..(w-1)).each do |x|
    l[y][x] = l[y][x-1] + 1 if field[y][x] == '.'
    r[y][-1-x] = r[y][-x] + 1 if field[y][-1-x] == '.'
  end
end

w.times do |x|
  u[0][x] = 1 if field[0][x] == '.'
  d[-1][x] = 1 if field[-1][x] == '.'
  h.times do |y|
    u[y][x] = u[y-1][x] + 1 if field[y][x] == '.'
    d[-1-y][x] = d[-y][x] + 1 if field[-1-y][x] == '.'
  end
end

max = 0
h.times do |y|
  w.times do |x|
    count = l[y][x] + r[y][x] + u[y][x] + d[y][x] - 3
    max = count if max < count
  end
end

puts(max)