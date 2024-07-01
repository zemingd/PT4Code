n, m = gets.split.map(&:to_i)
k = Array.new(m-1)
for i in 0..(m-1)
  k[i] = gets.split.map(&:to_i)
end
p = gets.split.map(&:to_i)
cnt = 0
for i in 0..(2**n - 1)
  num = i
  sw = Array.new(n, 0)
  sid = 0
  while sid < n
    sw[sid] = num % 2
    num /= 2
    sid += 1
  end
  flag = 0
  for j in 0..(m-1)
    cntsw = 0
    for l in 1..k[j][0]
      if sw[k[j][l] - 1] == 1
        cntsw += 1
      end
    end
    if cntsw % 2 != p[j]
      flag = 1
      break
    end
  end
  if flag == 0
    cnt += 1
  end
end
puts cnt