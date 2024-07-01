n,m,k = gets.split.map(&:to_i)
a = [0] + gets.split.map(&:to_i) + [10**9+1]
b = [0] + gets.split.map(&:to_i) + [10**9+1]

(n+1).times{|i|
  a[i+1] += a[i]
}
(m+1).times{|i|
  b[i+1] += b[i]
}

ub = n+2
lb = 0
100.times{|i|
  mid = (ub+lb)/2
  if a[mid]<=k
    lb = mid
  else
    ub = mid
  end
}

aidx = lb
max = 0
aidx.times{|i|
  tmp = i+1
  l = k - a[i+1]
  #p [l]
  ub = m+2
  lb = 0
  100.times{|i|
    mid = (ub+lb)/2
    if b[mid]<=l
      lb = mid
    else
      ub = mid
    end
  }
  tmp += lb
  
  #p tmp
  
  max = tmp if max < tmp
}

p max
