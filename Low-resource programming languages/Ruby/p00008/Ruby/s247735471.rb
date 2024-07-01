
def fact(n)
  if n == 0
    1
  else
    n * fact(n - 1)
  end
end

def c(n, r)
  return fact(n) / (fact(n - r) * fact(r))
end

def calcCombine(n)
  n = n > 18 ? 36 - n : n
  if n >= 0 and n <= 9
    return c(n + 3, 3)
  elsif n >= 10 and n <= 18
    return c(n + 3, 3) - 4 * c(n - 7, 3)
  else
    return 0
  end
end

input = Array.new()

while (line = gets) != nil
  input.push(line.to_i)
end

for i in input
  puts calcCombine(i)
end