h, a= gets.split.map(&:to_i)  # スペースで区切られた複数の整数

if h % a > 0
  puts((h / a) + 1)
else
  puts h / a
end
