S = gets
ary = []
flg = 0
4.time do |i|
  if ary.include?(S[i])
    flg + 1
  end
  ary << S[i]
end
if flg == 0
  puts Good
else
  puts Bad
end