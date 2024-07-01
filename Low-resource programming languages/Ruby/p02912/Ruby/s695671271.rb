n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a.sort!{|a, b| b <=> a}

div2 = Array.new(n)
for i in 0..(n-1)
  divcnt = 0
  num = a[i]
  while num > 0
    divcnt += 1
    num /= 2
  end
  div2[i] = divcnt
end

discnt = Array.new(n, 0)

tw = 0
prediv = -1
id = 0
dec = Array.new(n, 0)
ifall0 = 1
while m > 0
  if prediv != -1
    if id == n || prediv != div2[id]
      if id == n && tw == 1 && ifall0 == 1
        break
      end
      if tw == 0
        tw = 1
        id = 0
      else
        tw = 0
        id = 0
        prediv = -1
        ifall0 = 1
      end
      next
    end
  end
  if tw == 0
    if a[id] % 2 == 1
      a[id] /= 2
      dec[id] = 1
      discnt[id] += 1
      m -= 1
      ifall0 = 0 if a[id] > 0
    end
    prediv = div2[id]
  else
    if dec[id] == 0
      a[id] /= 2
      discnt[id] += 1
      m -= 1
      ifall0 = 0 if a[id] > 0
    else
      dec[id] = 0
    end
    prediv = div2[id]
    div2[id] -= 1
  end
  id += 1
end
      
sum = 0
for i in 0..(n-1)
  sum += a[i]
end
puts sum