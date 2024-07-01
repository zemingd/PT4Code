n = gets.to_i
t,a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

ans = -1
dif = 10**9
n.times{|i|
  tmp = t-h[i]*0.006
  if (tmp-a).abs < dif
    ans = tmp
    dif = (tmp-a).abs
  end
}

p ans+1