num = gets.to_i
chars = gets.chomp
initial = 0
last = 2
result = 0

while num != last do
  result += 1 if chars[initial..last] == "ABC"
  initial += 1
  last += 1
end

puts result
