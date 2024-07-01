n = gets.to_i
ball_nums = gets.split.map(&:to_i)
cnt_table = Array.new(n+1, 0)
ball_nums.each do |ball_num|
  cnt_table[ball_num] += 1
end
tmp = cnt_table.inject{|s, ele| s + ele * (ele - 1) / 2 }
ball_nums.each do |ball_num|
  result = tmp
  result -= cnt_table[ball_num] * (cnt_table[ball_num] - 1) / 2
  cnt_table[ball_num] -= 1
  result += cnt_table[ball_num] * (cnt_table[ball_num] - 1) / 2
  puts result
  cnt_table[ball_num] += 1
end