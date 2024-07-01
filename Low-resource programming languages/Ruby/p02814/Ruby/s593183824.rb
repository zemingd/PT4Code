n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

for i in 0..n-1
  a[i] /= 2
end

def fun x
  count = 0
  while(x % 2 == 0)
    x /= 2
    count += 1
  end
  count
end

t = fun a[0]
a[0] /= 2 ** t
for i in 1..n-1
  if fun(a[i]) != t
    puts 0
    exit
  end
  a[i] /= 2 ** t
end
l = 1
m = m / (2 ** t)
for i in 0..n-1
  l = l.lcm(a[i])
  if l > m
    puts 0
    exit
  end
end
puts ((m + 1)/(2*l))
