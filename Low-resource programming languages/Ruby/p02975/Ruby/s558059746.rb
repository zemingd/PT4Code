digi = 5
n = gets.to_i
a = gets.split.map(&:to_i)
xors = Array.new(n).map{Array.new(digi)}
digicnt = Array.new(digi, 0)

for i in 0..(n-1)
  ar = a[i].to_s(2).split("")
  ln = digi - ar.size
  ar = ar.map(&:to_i)
  xors[i][ln..digi] = ar
  for j in 0..(ln-1)
    xors[i][j] = 0
  end
end

for i in 0..(n-1)
  dbl = 1
  dbl = 2 if i == 0
  for j in 0..(digi-1)
    digicnt[j] += xors[i][j] * dbl
  end
end

flag = 1
for i in 0..(digi-1)
  if digicnt[i] % 2 != xors[0][i]
    flag = 0
    break
  end
end

if flag == 1
  puts "Yes"
else
  puts "No"
end