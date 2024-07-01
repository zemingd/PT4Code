a = Array.new(3).map{Array.new(3)}
for i in 0..2
  a[i] = gets.split.map(&:to_i)
end
n = gets.to_i
b = Array.new(n)
for i in 0..(n-1)
  b[i] = gets.to_i
end
bg = Array.new(3).map{Array.new(3,0)}
for i in 0..(n-1)
  for x in 0..2
    for y in 0..2
      bg[x][y] = 1 if a[x][y] == b[i]
    end
  end
end

ln = Array.new(3,0)
cl = Array.new(3,0)
cr = Array.new(2,0)
for i in 0..2
  for j in 0..2
    ln[i] += bg[i][j]
    cl[i] += bg[j][i]
    cr[0] += bg[i][j] if i == j
    cr[1] += bg[i][j] if i + j == 2
  end
end

flag = 0
for i in 0..2
  if ln[i] == 3 || cl[i] == 3 || (i < 2 && cr[i] == 3)
    flag = 1
    break
  end
end
(flag == 1) ? (puts "Yes"):(puts "No")