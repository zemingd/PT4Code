h,n = gets.split.map(&:to_i)  # スペースで区切られた複数の整数
ary = gets.split.map(&:to_i)  # スペースで区切られた複数の整数

#newary = ary.sort {|a, b| (-1) * (a <=> b) }  # 配列降順ソート
ary.sort! #配列昇順ソート

i = 0

#必殺技判定
if n >= h then
  puts i
  exit
else
  h = h - n #必殺技分だけ減算
end

ans = 0

while i < h do
  ans = ans + ary[i]
  i = i + 1
end

puts ans