n = gets.to_i
s = gets.chomp
count = 3000000

left_count = 0 # 先頭から
right_count = s.count('E') # 最初は向く方向が代わるEをカウント

n.times do |i|
  if s[i] == 'W'
    ans = left_count + right_count
    left_count += 1
  else
    right_count -= 1
    ans = left_count + right_count
  end
  count = ans if ans < count
end

puts count