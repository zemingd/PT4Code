n, m, c = gets.chomp.split(" ").map(&:to_i)
arB = gets.chomp.split(" ").map(&:to_i)

arA = []
n.times do
  arA << gets.chomp.split(" ").map(&:to_i)
end

ans = 0

for i in 0..(n-1) do
  sum = 0
  for j in 0..(m-1) do
    sum += arA[i][j] * arB[j]
  end
  sum += c
  if sum > 0 then
    ans += 1
  end
end

puts ans
