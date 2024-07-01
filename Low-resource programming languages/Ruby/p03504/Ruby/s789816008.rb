n,c = gets.split.map(&:to_i)
a = Array.new(10**5+1, 0)

prev = -1
b = n.times.map{gets.split.map(&:to_i)}.sort{|a, b| x = b[2]<=>a[2]; x!=0? x:b[0]<=>a[0]}
n.times{|i|
  s,t,ch = b[i]
  s -= 1 if prev != ch
  a[s] += 1
  a[t] -= 1
  prev = ch
}
max = 0
(a.size-1).times{|i|
  a[i+1] += a[i]
  max = a[i+1] if max < a[i+1]
}

p max