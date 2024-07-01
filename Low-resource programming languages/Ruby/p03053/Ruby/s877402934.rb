H, W = gets.split.map(&:to_i)
field = H.times.map { gets.chomp.split(//) }

count = 0
head = []
field.each_with_index do |e, i|
  e.each_with_index do |e, j|
    if e == '#'
      head << [i, j]
    end
  end
end
field = Array.new(H) { Array.new(W) }

count = -1
until head.empty?
  head_new = []
  res = false
  head.each do |i, j|
    next if field[i][j]
    res = true
    field[i][j] = 0
    head_new << [i, j - 1] if 0 < j && field[i][j - 1].nil?
    head_new << [i, j + 1] if j < W - 1 && field[i][j + 1].nil?
    head_new << [i - 1, j] if 0 < i && field[i - 1][j].nil?
    head_new << [i + 1, j] if i < H - 1 && field[i + 1][j].nil?
  end
  head = head_new
  count += 1 if res
end

puts count