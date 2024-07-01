n = gets.chomp.to_i
s = gets.chomp

while pos >= 0
  if s[pos] == '#'
    pos -= 1
    next
  end
  break
end

black_cnt = 0
white_cnt = 0
ans = 0
while pos >= 0
  if s[pos] == '#'
    black_cnt += 1
  else
    white_cnt += 1
  end
  if black_cnt > white_cnt
    ans += white_cnt
    black_cnt = 0
    white_cnt = 0
  end
  pos -= 1
end
puts ans + [black_cnt, white_cnt].min
