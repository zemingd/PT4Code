n,a,b = gets.split.map(&:to_i)

if (b-a).even?
  puts (b-a)/2
else
  if a-1 < n-b # 前
    diff = a-1
    puts diff+1 + (b-diff-1 - 1)/2
  else
    diff = n-b # 後ろ
    puts diff+1 + (b+diff - (a+diff+1))/2
  end
end