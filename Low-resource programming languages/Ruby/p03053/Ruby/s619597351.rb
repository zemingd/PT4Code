h, w = gets.split.map(&:to_i)
a = h.times.map { gets.chomp.chars.map { |s| s == '#' } }
list = []
h.times do |i|
  w.times do |j|
    list << [i, j] if a[i][j]
  end
end

cnt = 0
loop do
  n = list.size
  n.times do
    i, j = list.delete_at(0)
    if i - 1 >= 0 && !a[i - 1][j]
      a[i - 1][j] = true
      list << [i - 1, j]
    end
    if i + 1 < h && !a[i + 1][j]
      a[i + 1][j] = true
      list << [i + 1, j]
    end
    if j - 1 >= 0 && !a[i][j - 1]
      a[i][j - 1] = true
      list << [i, j - 1]
    end
    if j + 1 < w && !a[i][j + 1]
      a[i][j + 1] = true
      list << [i, j + 1]
    end
  end
  break if list.empty?

  cnt += 1
end
puts cnt
