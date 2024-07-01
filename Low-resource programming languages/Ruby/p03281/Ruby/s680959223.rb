n = gets.to_i
ans = 0
(1..n).each do |i|
  next if i % 2 == 0
  cnt = 0
  (1..i).each do |j|
    cnt += 1 if i % j == 0
  end
  ans += 1 if cnt == 8
end
puts ans