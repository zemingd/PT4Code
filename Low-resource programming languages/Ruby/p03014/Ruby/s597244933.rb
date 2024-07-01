h,w = gets.chomp.split(" ").map(&:to_i)
s = Array.new{Array.new}
h.times do |i|
  s[i] = gets.chomp
  s[i] = s[i] + "#"
end
s[h] = ""
w.times do
  s[h] = s[h] + "#"
end
yoko = Array.new(h){Array.new(w,0)}
tate = Array.new(h){Array.new(w,0)}
h.times do |i|
  j = 0
  while j <= w-1
    from = j
    count = 0
    while s[i][j] == '.' && j <= w-1
      j += 1
      count += 1
    end
    from.upto(j-1) do |k|
      yoko[i][k] = count
    end
    j += 1
  end
end
w.times do |i|
  j = 0
  while j <= h-1
    from = j
    count = 0
    while s[j][i] == '.' && j <= h-1
      j += 1
      count += 1
    end
    from.upto(j-1) do |k|
      tate[k][i] = count
    end
    j += 1
  end
end
max = 0
for i in 0..h-1
  for j in 0..w-1
    max = yoko[i][j] + tate[i][j] - 1 if max < yoko[i][j] + tate[i][j] - 1
  end
end
puts max