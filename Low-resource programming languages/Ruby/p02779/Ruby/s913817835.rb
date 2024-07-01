n = gets.to_i               # 単一整数
ary = gets.split.map(&:to_i)  # スペースで区切られた複数の整数
ary.sort!

ans = "Yes"
i = 0

while i < n do
  if ary[i] == ary[i+1] then
    ans = "No"
    break
  end
  i = i + 1
end

puts ans