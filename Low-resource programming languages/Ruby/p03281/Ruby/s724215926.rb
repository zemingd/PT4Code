n = gets.chomp.to_i
cnt = 0
1.upto(n) do |i|
  next if i.even?

  s_cnt = 0
  1.upto(i) do |j|
    next if j.even?

    s_cnt += 1 if i % j == 0
  end
  
  cnt += 1 if s_cnt == 8
end
puts cnt
