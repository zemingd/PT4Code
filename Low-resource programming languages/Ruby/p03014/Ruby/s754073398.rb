h, w = gets.chomp.split.map(&:to_i)
field = []
h.times do |i|
  field[i] = gets.chomp
end

row_count = Array.new(h).map{Array.new(w,0)}
h.times do |y|
  pos = 0
  tmp_count = 0
  w.times do |x|
    if field[y][x] == '#'
      if tmp_count > 0
        row_count[y][pos], row_count[y][x] = tmp_count, -tmp_count
        tmp_count = 0
      end
    else
      pos = x if tmp_count == 0
      tmp_count += 1
    end
  end
  row_count[y][pos] = tmp_count if tmp_count > 0
end
h.times do |y|
  w.times do |x|
    next if x == 0
    row_count[y][x] += row_count[y][x-1]
  end
end

column_count = Array.new(h).map{Array.new(w,0)}
w.times do |x|
  pos = 0
  tmp_count = 0
  h.times do |y|
    if field[y][x] == '#'
      if tmp_count > 0
        column_count[pos][x], column_count[y][x] = tmp_count, -tmp_count
        tmp_count = 0
      end
    else
      pos = y if tmp_count == 0
      tmp_count += 1
    end
  end
  column_count[pos][x] = tmp_count if tmp_count > 0
end
w.times do |x|
  h.times do |y|
    next if y == 0
    column_count[y][x] += column_count[y-1][x]
  end
end

max = 0
h.times do |y|
  w.times do |x|
    count = row_count[y][x] + column_count[y][x] - 1
    max = count if max < count
  end
end
puts(max)