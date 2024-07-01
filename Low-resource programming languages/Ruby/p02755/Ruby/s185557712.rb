a = gets.chomp.split.map(&:to_i)  # スペースで区切られた複数の整数

ans1 = a[0].to_f / 0.08
ans2 = a[1].to_f / 0.10

wk = (ans1 - ans2).abs

if wk > 10 then
  puts("-1")
  exit
end

if a[0] >= a[1] then
  puts ans1.floor.to_i
else
  puts ans2.floor.to_i
end