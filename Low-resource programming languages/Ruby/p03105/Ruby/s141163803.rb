a, b, c = gets.split(" ").map(&:to_i)

count = 0

while count < c do
  if b >= a then
    count += 1
    b -= a
  else
    break
  end
end

puts count
