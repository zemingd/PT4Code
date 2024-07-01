n, k = gets.chomp.split
n = n.to_i
k = k.to_i
a = gets.chomp.split
for i in 0..(n-1)
  a[i] = a[i].to_i
end

max = 0
for i in 0..k
  sum = 0
  
  i_t = i
  i_digi = 1
  i_dg = []
  i_dg[0] = i_t % 2
  i_t /= 2
  while i_t > 1
    i_dg[i_digi] = i_t % 2
    i_t /= 2
    i_digi += 1
  end
  if i > 1
    i_dg[i_digi] = 1
  else
    i_digi = 0
  end
  
  for j in 0..(n-1)
    a_t = a[j]
    a_digi = 1
    a_dg = []
    a_dg[0] = a_t % 2
    a_t /= 2
    while a_t > 1
      a_dg[a_digi] = a_t % 2
      a_t /= 2
      a_digi += 1
    end
    if a[j] > 1
      a_dg[a_digi] = 1
    else
      a_digi = 0
    end
    
    cnt = 0
    if i_digi > a_digi
      cnt = i_digi
      for k in (a_digi+1)..cnt
        a_dg[k] = 0
      end
    else
      cnt = a_digi
      for k in (i_digi+1)..cnt
        i_dg[k] = 0
      end
    end
    for k in cnt..0
      if i_dg[k] != a_dg[k]
        sum += 2 ** k
      end
    end
  end
  
  if sum > max
    max = sum
  end
end
puts max
    
      