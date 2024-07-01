n = gets.to_i
a = gets.split.map(&:to_i)
x = a.shift
y = a.pop
while a.size > 0
  if x > y
    y += a.pop
  else
    x += a.shift
  end
end
puts (x - y).abs