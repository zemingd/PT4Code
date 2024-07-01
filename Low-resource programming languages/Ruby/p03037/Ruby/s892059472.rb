n,m = gets.split().map(&:to_i)
l = []
r = []
y = 0
m.times do
  x = gets.split().map(&:to_i)
  l << x[0]
  r << x[1]
  if x[0] == x[1]
    y = 1
  end
end
min = l.sort.reverse.first
max = r.sort.first
if max < min
  ans = 0
elsif max == min
  ans = 1
else
  ans = max - min + 1
end
if y == 0
  puts ans
elsif ans != 0
  puts 1
else
  puts ans
end

