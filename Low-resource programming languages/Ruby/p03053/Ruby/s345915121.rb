h, w = gets.split.map(&:to_i)
a = h.times.map { gets.chomp.chars }
list = []
h.times do |i|
  w.times do |j|
    list << [i, j] if a[i][j] == '#'
  end
end

cnt = 0
loop do
  new_list = []
  list.each do |i, j|
    new_list << [i - 1, j] if i - 1 >= 0 && a[i - 1][j] == '.'
    new_list << [i + 1, j] if i + 1 < h && a[i + 1][j] == '.'
    new_list << [i, j - 1] if j - 1 >= 0 && a[i][j - 1] == '.'
    new_list << [i, j + 1] if j + 1 < w && a[i][j + 1] == '.'
  end
  list = new_list
  break if list.empty?

  list.each do |i, j|
    a[i][j] = '#'
  end
  cnt += 1
end
puts cnt
