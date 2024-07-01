n, y = gets.strip.split.map(&:to_i)
maisuu = y/1000
sabun = (maisuu - n)

a = sabun/13
b = (sabun%13)/9
c = (sabun%13)/4

if sabun >= 0
  if sabun%13 == 0
    puts sprintf('%d %d %d', a, a, maisuu - a*15)
  elsif (sabun%13)%9 == 0
    puts sprintf('%d %d %d', a + b, a, maisuu - a*15 - b*10)
  elsif (sabun%13)%4 == 0
    puts sprintf('%d %d %d', a, a + c, maisuu - a*15 - c*5)
  elsif sabun%9 == 0
    puts sprintf('%d %d %d', sabun/9, 0, maisuu - 10*(sabun/9))
  elsif sabun%4 == 0
    puts sprintf('%d %d %d', 0, sabun/4, maisuu - 5*(sabun/4))
  else
    puts sprintf('%d %d %d', -1, -1, -1)
  end
else
  puts sprintf('%d %d %d', -1, -1, -1)
end
