h, w = gets.split.map(&:to_i)
s = Array.new(h).map{Array.new(w)}
for i in 0..(h-1)
  s[i] = gets.chomp.split("")
end

cl = Array.new(h).map{Array.new(w, 0)}
ln = Array.new(h).map{Array.new(w, 0)}

for i in 0..(h-1)
  cnt = 0
  for j in 0..(w-1)
    if s[i][j] == "#"
      cl[i][j] = 0
      cnt = 0
    else
      cnt += 1
      cl[i][j] = cnt
    end
  end
  j = w-1
  num = 0
  while j >= 0
    if s[i][j] == "#"
      num = 0
    else
      num = cl[i][j] if num == 0
      cl[i][j] = num
    end
    j -= 1
  end
end

for i in 0..(w-1)
  cnt = 0
  for j in 0..(h-1)
    if s[j][i] == "#"
      ln[j][i] = 0
      cnt = 0
    else
      cnt += 1
      ln[j][i] = cnt
    end
  end
  j = h-1
  num = 0
  while j >= 0
    if s[j][i] == "#"
      num = 0
    else
      num = ln[j][i] if num == 0
      ln[j][i] = num
    end
    j -= 1
  end
end

max = 0
for i in 0..(h-1)
  for j in 0..(w-1)
    max = [max, cl[i][j]+ln[i][j]-1].max
  end
end
puts max