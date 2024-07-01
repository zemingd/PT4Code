# joisinoお姉ちゃんは、A op B という式の値を計算したいと思っています。
# ここで、A,B は整数で、op は、+ または - の記号です。
# あなたの仕事は、joisinoお姉ちゃんの代わりにこれを求めるプログラムを作ることです。

input = gets.chomp.split
a = input[0].to_i
op = input[1]
b = input[2].to_i

case op
when "+"
    puts a + b
when "-"
    puts a - b
end