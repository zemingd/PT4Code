input = []
while line = gets
  s = line.split(' ')
  x = s[0].to_i
  y = s[1].to_i
  if (x == 0 && y == 0)
    break
  end
  input.push([x, y].sort)
end

for i in input
  print i[0].to_s + " " + i[1].to_s + "\n"
end