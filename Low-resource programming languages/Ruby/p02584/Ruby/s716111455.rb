x,k,d = gets.split.map(&:to_i)
c = k * d
if c <= x.abs
  if x > 0
    puts x - c
  else
    puts x + c
  end
  exit
end
x = x.abs
a = x / d
b = k - a
y = x - a * d
z = y - d
if b.odd?
  puts z.abs
else
  puts y
end