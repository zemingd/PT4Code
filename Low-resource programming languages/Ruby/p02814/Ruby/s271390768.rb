def gcd(a, b)
  return a if b == 0
  gcd(b, a%b)
end

def lcm(a, b)
  a, b = b, a if b > a
  a * b / gcd(a,b)
end

def f(n)
  cnt = 0
  while n%2 == 0
    n /= 2
    cnt += 1
  end
  cnt
end

N, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a = a.map!{|n| n/2}

flag = true
ni = f(a[0])
N.times do |i|
  if ni != f(a[i])
    flag = false
    break
  end
end

if flag
  a.map!{|n| n/(2**ni)}
  m /= 2 ** ni
  l = 1
  N.times do |i|
    l = lcm(l, a[i])
  end
  puts ((m/l) + 1)/2
else
  puts 0
end