# 入力：整数a b
# 出力：積が奇数なら Odd と、 偶数なら Even と出力せよ。

a,b = gets.chomp.split(" ").map(&:to_i)
c = a * b
if c % 2 == 0
    puts("Even")
else 
    puts("Odd")
end