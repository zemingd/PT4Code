h = gets.to_i
results = [h]
while h > 1
  results << h / 2
  h = h / 2
end
1.upto(results.size) do |i|
  if i == 1
    next
  else
    results[-i] = 2 * results[1-i] + 1
  end
end
puts results[0]