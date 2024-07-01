ab = gets.to_s
ab = ab.split(" ")
a = ab[0].to_i
b = ab[1].to_i
sum = 0

if a > b
  sum += a
  a = a - 1
else
  sum += b
  b = b - 1
end

if a > b
  sum += a
  a = a - 1
else
  sum += b
  b = b - 1
end
puts sum
