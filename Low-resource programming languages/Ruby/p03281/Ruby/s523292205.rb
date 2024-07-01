n = gets.to_i
cnt = 0

for i in 1..n
  div = 0
  for j in 1..i
    div += 1 if i % j == 0
  end
  cnt += 1 if div == 8
end
puts cnt