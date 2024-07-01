input = []
while (line = gets).to_i != 0
  s = line.split(' ').sort
  input.push(s)
end

for i in input
  print i[0].to_s + " " + i[1].to_s + "\n"
end