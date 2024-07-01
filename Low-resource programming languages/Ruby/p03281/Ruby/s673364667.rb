n = gets.to_i
count = 0
1.step(n, 2) do |x|
  div_count = 0
  1.step(x, 2) do |d|
    div_count += 1 if x % d == 0
  end
  count += 1 if div_count == 8
end
puts count
