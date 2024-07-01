str = gets.split
N,Y = str[0].to_i, str[1].to_i/1000

y = Y - N
if y / 9.0 > N || y < 0
  puts("-1 -1 -1")
  exit(0)
end
r = y%4
if r > y/8 || r > N
  puts("-1 -1 -1")
  exit(0)
end
a = r
b = y/4 - a*2
c = N - a - b
if c < 0
  d = b/9
  b = b%9
  a += d*4
  c += d*5
  if c < 0
    puts("-1 -1 -1")
    exit(0)
  end
end
print(a," ",b," ",c)
puts()