def change2bit(n, digi)
  ar = n.to_s(2).split("")
  ln = digi - ar.size
  ar.map(&:to_i)
  ln.times{ar.unshift(0)}
  return ar
end

digi = 5
n = gets.to_i
a = gets.split.map(&:to_i)
xors = Array.new(n).map{Array.new(digi)}
digicnt = Array.new(digi, 0)

for i in 0..(n-1)
  xors[i] = change2bit(a[i], digi)
end

for i in 0..(n-1)
  dbl = 1
  dbl = 2 if i == 0
  for j in 0..(digi-1)
    digicnt[j] += xors[i][j][0].to_i * dbl
  end
end

flag = 1
for i in 0..(digi-1)
  if digicnt[i] % 2 != xors[0][i][0].to_i
    flag = 0
    break
  end
end

if flag == 1
  puts "Yes"
else
  puts "No"
end