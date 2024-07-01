n = gets.to_i
ans = 0
(1..n).each do |i|
  if i % 2 == 1
    m = Math.sqrt(i).floor
    cnt = 0
    (1..m).each do |j|
      if i % j == 0
        cnt += 1
      end
    end
    if cnt == 4
      ans += 1
    end
  end
end
puts ans
