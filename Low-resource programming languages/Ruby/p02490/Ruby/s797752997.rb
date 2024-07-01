input = []
while line = gets
  s = line.split(' ').sort
  if (s[0].to_i == 0 && s[1].to_i == 0)
    break
  end
  input.push(s)
end

for i in input
  print i[0].to_s + " " + i[1].to_s + "\n"
end