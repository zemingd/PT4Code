n,*ar = gets.split.map(&:to_i)
x = n.times.map{gets.to_i}

ans = 10**9
sum = Array.new(4,0)
(4**n).times{|i|
  s = (4**n+i).to_s(4)[1..-1]
  sum.fill(0)
  tmp = 0
  n.times{|i|
    tmp += 10 if sum[s[i].to_i] > 0
    sum[s[i].to_i] += x[i]
  }
  next if sum.map{|x|x<=0}.any?
  tmp += 3.times.map{|i|(ar[i]-sum[i]).abs}.inject(:+)
  ans = tmp if ans > tmp
}

p ans