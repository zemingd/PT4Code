k = gets.to_i

m = (k / 2) ## 奇数 50 偶数 50

count = 0

if k % 2 == 0 
  count = m * m  ## 偶数
else
  count = m * (m + 1) ## 奇数
end

puts count.to_s  ## 文字列を出力
