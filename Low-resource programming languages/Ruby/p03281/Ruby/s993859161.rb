n = gets.strip.to_i
cnt = 0
1.step(n, 2) do |i|
  s_cnt = 0
  1.step(i, 2) do |j|
    s_cnt += 1 if i % j == 0
  end
  cnt += 1 if s_cnt == 8
end
puts cnt
