def a(s, sum)
  if s == "+"
    return sum += 1
  end
  return sum -= 1
end
input = gets
sum = 0
sum = a(input[0], sum)
sum = a(input[1], sum)
sum = a(input[2], sum)
sum = a(input[3], sum)
p sum
