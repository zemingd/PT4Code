
def calcDigit(x)
  t = x
  d = 0
  while t > 0
    t = t / 10
    d += 1
  end

  return d
end

input = Array.new()

while line = gets.split()
#  if (line[0].to_i == -1)
#    break
#  end
  input.push(line)
end

for i, j in input
  puts calcDigit(i.to_i + j.to_i)
end