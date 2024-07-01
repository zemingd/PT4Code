n, m = gets.split.map(&:to_i)
a = gets.split.map { |x| x.to_i / 2}

def func x
  count = 0
  while (x % 2 == 0)
    x = x / 2
    count += 1
  end
  count
end

t = func a[0]
for i in 0..n-1
  if t != func(a[i])
    puts 0
    exit
  end
  a[i] = a[i] / (2 ** t)
end
m = m / (2 ** t)
l = 1
for i in 0..n-1
  l = l.lcm(a[i])
  if l > m
    puts 0
    exit
  end
end
m /= l
puts ((m + 1)/ 2)
