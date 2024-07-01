require 'prime'

n = gets.to_i
a = gets.split.map(&:to_i)

ans = Array.new(n+1,0)
g = Array.new(n+1,[])

n.times{|i|
  x = n-i
  ans[x] += 1 if a[x-1]==1
  s = Prime.prime_division(x)
  s.map{|t| ans[t[0]] += 1} if a[x-1]==1
  ans[x] %= 2
}

pp = []
n.times{|i|
  if ans[i+1]==1
    pp<<(i+1)
  end
}

p pp.size
pp.each{|x|p x}
