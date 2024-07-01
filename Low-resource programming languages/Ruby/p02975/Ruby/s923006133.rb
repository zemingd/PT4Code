def change2sys(n, digi)
  ar = Array.new(0)
  cnt = 0
  while n > 0
    ar.unshift(n % 2)
    n /= 2
    cnt += 1
  end
  for i in 0..(digi-cnt-1)
    ar.unshift(0)
  end
  return ar
end

digi = 30
n = gets.to_i
a = gets.split.map(&:to_i)
xors = Array.new(n).map{Array.new(digi)}
digicnt = Array.new(digi, 0)

for i in 0..(n-1)
  xors[i] = change2sys(a[i], digi)
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