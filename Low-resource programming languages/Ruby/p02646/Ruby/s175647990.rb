A,V = gets.chomp.split.map(&:to_i)  # スペースで区切られた複数の整数
B,W = gets.chomp.split.map(&:to_i)  # スペースで区切られた複数の整数
T = gets.chomp.to_i               # 単一整数

A.freeze
V.freeze
B.freeze
W.freeze
T.freeze

wk1 = A  #鬼
wk2 = B  #逃げる

if wk1 > wk2 then
  wk1 = B
  wk2 = A
end
for num in 1..T do
  wk1 = wk1 + V
  wk2 = wk2 + W
  if wk1 >= wk2 then
    puts "YES"
    exit
  else
    ##空処理
  end
end
puts "NO"