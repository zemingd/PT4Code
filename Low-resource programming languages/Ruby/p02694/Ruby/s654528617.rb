x = gets.to_i
y = 100

cnt = 0

while x > y do
  y += y/100
  cnt += 1
end

puts cnt