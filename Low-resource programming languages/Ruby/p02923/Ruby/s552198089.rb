n = gets.to_i
h_li = gets.split.map(&:to_i)
ans = 0
tmp_ans = 0
(h_li.length - 1).times do |i|
  if h_li[i+1] <= h_li[i]
    tmp_ans += 1
  else
    ans = tmp_ans if tmp_ans > ans
    tmp_ans = 0
  end
end
ans > tmp_ans ? puts(ans) : puts(tmp_ans)
