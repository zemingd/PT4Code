n = gets.to_i
a = gets.split.map{|x| x.to_i}
h = n/2
es = Array.new(100001, 0)
os = Array.new(100001, 0)
for i in 0...h
  es[a[2*i]] += 1
  os[a[2*i+1]] += 1
end

esuf1 = esuf2 = -1
emax1 = 0
for i in 0..100000
  if es[i] == es.max
    esuf1 = i
    emax1 = es.max
    es[i] = 0
    break
  end
end
for i in 0..100000
  if es[i] == es.max
    esuf2 = i
    break
  end
end
emax2 = es.max

osuf1 = osuf2 = -1
omax1 = 0
for i in 0..100000
  if os[i] == os.max
    osuf1 = i
    omax1 = os.max
    os[i] = 0
    break
  end
end
for i in 0..100000
  if os[i] == os.max
    osuf2 = i
    break
  end
end
omax2 = os.max

if esuf1 != osuf1
  print (n - emax1 - omax1)
else
  print (n - [omax1+emax2, omax2+emax1].max)
end
