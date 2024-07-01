n = gets.to_i
res = 0

1.step(n, 2) do |i|
  cnt = 0

  (1..n).each do |j|
    if i % j == 0
      cnt += 1
    end
  end

  if cnt == 8
    res += 1
  end
end

puts res
