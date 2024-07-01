a, b = gets.split(" ").map(&:to_i)

result = 0
for i in 1..2 do
  if a >= b
    result += a
    a -= 1
  else
    result += b
    b -= 1
  end
end
puts result
