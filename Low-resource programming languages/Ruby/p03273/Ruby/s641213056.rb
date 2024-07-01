h, w = gets.split.map(&:to_i)
a = Array.new(h).map{Array.new(w)}
for i in 0..(h-1)
  a[i] = gets.chomp.split("")
end

col = Array.new(h)
row = Array.new(w)
for i in 0..([h,w].max-1)
  col[i] = i if i < h
  row[i] = i if i < w
end

for i in 0..(h-1)
  flag = 1
  for j in 0..(w-1)
    if a[i][j] == "#"
      flag = 0
      break
    end
  end
  col.delete(i) if flag == 1
end
for i in 0..(w-1)
  flag = 1
  for j in 0..(h-1)
    if a[j][i] == "#"
      flag = 0
      break
    end
  end
  row.delete(i) if flag == 1
end

col.each do |i|
  row.each do |j|
    print a[i][j]
  end
  puts ""
end