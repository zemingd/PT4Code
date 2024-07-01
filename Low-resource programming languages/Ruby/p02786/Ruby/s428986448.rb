H = gets.to_i

h=H
count=0
x=1

while h > 0
  h = h / 2
  count += x
  x = x * 2
end
puts count