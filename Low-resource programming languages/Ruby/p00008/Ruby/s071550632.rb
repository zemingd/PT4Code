
def calcNumbers(n)
  num = Array.new()
  tmp = n
  while (num.size() != 4)
    if tmp >= 9
      tmp = tmp - 9
      num.push(9)
    else
      if (tmp == 0)
        num.push(0)
      else
        num.push(tmp)
        tmp = 0
      end
    end
  end
  return num
end

def fact(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end

def calcCombine(n)
  return 24 / (fact(calcSameNumber(n)))
end

def calcSameNumber(n)
  a = 0
  b = 0
  i = 0
  while i < 4
    if n[i] == 9
      a += 1
    elsif n[i] == 0
      b += 1
    end
    i += 1
  end
  return a > b ? a : b
end

input = Array.new()

while (line = gets) != nil
  input.push(line.to_i)
end

for i in input
  a = calcNumbers(i)
  puts calcCombine(a)
end