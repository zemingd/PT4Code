n,*ar = gets.split.map(&:to_i)
x = n.times.map{gets.to_i}

ans = 10**9
sum = Array.new(3,0)
(4**n).times{|i|
  s = (4**n+i).to_s(4)[1..-1]
  sum.fill(0)
  tmp = 0
  n.times{|j|
    next if s[j].to_i>2
    tmp += 10 if sum[s[j].to_i] > 0
    sum[s[j].to_i] += x[j]
  }
  next if 3.times.map{|j|sum[j]<=0}.any?
  tmp += 3.times.map{|j|(ar[j]-sum[j]).abs}.inject(:+)
  
  ans = tmp if ans > tmp
}

p ans