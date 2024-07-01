n = gets.to_i
ans = 0
1.upto(n) do |i|
  if i % 2 == 1
    count = 0
    1.upto(i) do |j|
      if i % j == 0
        count += 1
      end
    end
    if count == 8
      ans += 1
    end
  end
end

p ans
