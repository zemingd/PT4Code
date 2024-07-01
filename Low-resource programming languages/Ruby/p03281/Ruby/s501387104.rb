n = gets.to_i

ans  = 0
1.upto(n) do |i|
  cnt = 0
  1.step(200, 2) do |j|
    cnt += 1 if i % j == 0
  end
  ans += 1 if cnt == 8
end
puts ans