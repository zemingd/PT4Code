n = gets.to_i
ball_nums = gets.split.map(&:to_i)
cnt_table = Array.new(n+1, 0)
ball_nums.each do |ball_num|
  cnt_table[ball_num] += 1
end
table = Array.new(n+1, 0)
1.upto(n) do |i|
  table[i] = i * (i - 1) / 2
end
ball_nums.each do |ball_num|
  cnt_table[ball_num] -= 1
  result = 0
  1.upto(n) do |idx|
    result += table[cnt_table[idx]]
  end
  puts result
  cnt_table[ball_num] += 1
end