A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i
ans = 0
for i in 0..A do
  break if 500 * i > X
  for j in 0..B do
    break if 500 * i + 100 * j > X
    if (X - 500 * i - 100 * j) <= C
      ans += 1
    end
  end
end
puts ans
