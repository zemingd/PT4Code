# A  以上 B 以下の整数のうち、回文数となるものの個数を求めてください。
# ただし、回文数とは、先頭に 0 をつけない 10 進表記を文字列として見たとき、
# 前から読んでも後ろから読んでも同じ文字列となるような正の整数のことを指します。

input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i

count = 0
i = a
while i <= b
  i = i.to_s

  if i == i.reverse
    count += 1
  end

  i = i.to_i
  i += 1
end

puts count
