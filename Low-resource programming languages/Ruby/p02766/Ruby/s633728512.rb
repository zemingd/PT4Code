# 整数 N を K 進数で表したとき、何桁になるかを求めてください。

nk = gets.chomp.split
n = nk[0].to_i
k = nk[1].to_i

digits = 0
while n > 0
    n /= k
    digits += 1
end

puts digits