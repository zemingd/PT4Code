n,m,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i) + [10**9+1]
b = gets.split.map(&:to_i) + [10**9+1]

(n).times{|i|
  a[i+1] += a[i]
}
(m).times{|i|
  b[i+1] += b[i]
}

ub = a.size
lb = 0
100.times{|i|
  mid = (ub+lb)/2
  if a[mid]<=k
    lb = mid
  else
    ub = mid
  end
}

aidx = ub
max = 0
bsize = b.size
(aidx+1).times{|i|
  tmp = i+1
  l = k - a[i]
  break if l<0
  ub = b.size
  lb = 0
  100.times{|i|
    mid = (ub+lb)/2
    if b[mid]<=l
      lb = mid
    else
      ub = mid
    end
  }
  tmp += ub
  
  max = tmp if max < tmp
}

p max
