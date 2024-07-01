a = 0
b = 0

while ( a != nil && b != nil)

  a, b = gets.to_i, gets.to_i

  x = a + b
  res = 0

  while x != 0
    x /= 10
    res += 1
  end

  puts res
end