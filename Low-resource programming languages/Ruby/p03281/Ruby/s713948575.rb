n = gets.to_i
result = 0
1.upto(n) do |i|
  next if i % 2 == 0
  count = 0
  1.upto(i) do |j|
    count += 1 if i % j == 0
  end
  result += 1 if count == 8
end
puts result