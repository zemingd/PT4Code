A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

count = 0

for coin_500 in 0..A do
  for coin_100 in 0..B do
    for coin_50 in 0..C do
      if coin_500 * 500 + coin_100 * 100 + coin_50 * 50 == X then
        count += 1
      end
    end
  end
end

p count