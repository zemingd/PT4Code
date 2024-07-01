H, W = gets.chomp.split.map(&:to_i)

ll = []

H.times do |i|
  a = gets.chomp.chars

  next if a.count('.') == W
  ll << a
end


cols = []
W.times do |j|
  flag = false
  ll.length.times do |i|
    flag = true if ll[i][j] == '#'
  end

  cols << j if flag
end

ans = []
ll.length.times do |i|
  row = []
  cols.each do |j|
    row << ll[i][j]
  end
  ans << row
end

ans.each do |row|
  puts row.join
end
