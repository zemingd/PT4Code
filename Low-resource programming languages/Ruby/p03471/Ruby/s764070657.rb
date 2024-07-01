# from https://twitter.com/wakuwinmail_C/status/950277218411855872

N, Y = gets.split.map(&:to_i)

x = Y / 10000
y = Y % 10000 / 5000
z = Y % 5000 / 1000

temp=N-(x+y+z)

if temp < 0
  x=y=z=-1
end

if x >= temp % 4
  x -= temp % 4
  y += temp % 4 * 2
  temp -= temp % 4
else
  x=y=z=-1
end

if x >= temp
  x -= temp
  y += temp * 2
  temp = 0
else
  temp -= x / 4 * 4
  y += (x - x % 4) * 2
  x %= 4
end

if y > temp / 4
  y -= temp / 4
  z += temp / 4 * 5
  temp = 0
else
  x=y=z=-1
end

puts "#{x} #{y} #{z}"
