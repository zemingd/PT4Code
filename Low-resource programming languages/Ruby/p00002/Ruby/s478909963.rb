
def calcDigit(x)
  t = x
  d = 1
  while t <= 0
    t = t / 10
    d += 1
  end

  return t
end

input = Array.new()

while line = gets.split()
  input.push(line)
end

for i, j in input
  puts calcDigit(i + j)
end