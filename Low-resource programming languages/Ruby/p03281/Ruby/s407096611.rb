n = gets.to_i
ans = 0
1.upto(n) do |i|
  next if (i % 2) === 0
  res = 0
  1.upto(i) do |j|
    res += 1 if i % j === 0
  end
  ans += 1 if res === 8
end
puts ans