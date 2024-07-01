n, m = gets.split.map(&:to_i)
as   = m.times.map{ gets.to_i }
before = -1
as.each do | a |
  if before == a-1
    p 0
    exit
  end
  before = a
end

sizes = []
0.upto(as.size-1) do | i |
  if sizes.empty?
    sizes << as[i]
    next
  end
  sizes << (as[i]-as[i-1]-1)
end
sizes << n - as[-1]

def fibo(n)
  return 0 if n == 0
  return 1 if n == 1
  ary = [0, 1]

  2.upto(n) do | i |
    tmp = ary[i-1] + ary[i-2]
    ary.push(tmp)
  end
  return ary
end

fibo = fibo(sizes.max)

ans = 1
sizes.each do | s |
  ans = ans * fibo[s]
end
p ans%1000000007