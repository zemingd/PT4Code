x = gets.to_i

n = 100
count = 0

while n < x do
  n = n * 101 / 100
  count += 1
end

print count