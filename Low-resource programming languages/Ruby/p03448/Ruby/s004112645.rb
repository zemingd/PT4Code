A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

count = 0

for i in 0..A do
  for j in 0..B do
    for k in 0..C do
      if 500 * i + 100 * j + 50 * k == X then
        count += 1
      end
    end
  end
end

puts count
