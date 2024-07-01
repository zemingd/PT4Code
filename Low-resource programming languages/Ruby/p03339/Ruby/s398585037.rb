def min(a, b)
  a < b ? a : b
end


n = gets.chomp.to_i
s = gets.chomp

# 右のEの数
right_e_count = s.count('E') - s[0].count('E')
left_w_count = 0

ans = right_e_count + left_w_count

1.upto(n-1) do |i|
  right_e_count -= 1 if s[i] == 'E'
  left_w_count += 1 if s[i-1] == 'W'

  ans = min(ans, right_e_count + left_w_count)
end

p ans