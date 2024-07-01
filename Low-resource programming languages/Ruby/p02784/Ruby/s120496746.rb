h,n = gets.split.map(&:to_i)  # スペースで区切られた複数の整数
ary = gets.split.map(&:to_i)  # スペースで区切られた複数の整数

newary = ary.sort {|a, b| (-1) * (a <=> b) }  # 配列降順ソート

i = 0
ans = h
while i < n do
  ans = ans - newary[i]
  i = i + 1
end

if ans <= 0 then
  puts "Yes"
else
  puts "No"
end