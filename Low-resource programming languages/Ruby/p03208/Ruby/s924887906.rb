n,k = gets.split.map(&:to_i)
h = n.times.map{gets.to_i}.sort

ans = 10**10
q = []
(k-1).times{|i| q << h[i]}
(k-1).upto(n-1){|i|
  q << h[i]
  tmp = q[-1]-q[0]
  q.shift
  ans = tmp if ans > tmp
}

p ans
