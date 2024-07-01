#両面印刷
n = gets.chomp!.to_i
# 偶数ページなら
if n % 2 == 0
  p n / 2
else
  p n / 2 + 1
end