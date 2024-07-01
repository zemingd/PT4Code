n = gets.strip.to_i
s = gets.strip.split('')

# 数字を入れる配列を用意する
r = []
l = []
r_c = (1..n+1).map{|i| i = 0 }
l_c = (1..n+1).map{|i| i = 0 }

# 数字と累積和の配列を生成
(1..n).each do |i|
  if s[i-1] == "E"
    r[i-1] = 1
    l[i-1] = 0
  else
    r[i-1] = 0
    l[i-1] = 1
  end
  r_c[i] = r_c[i-1] + r[i-1]
  l_c[i] = l_c[i-1] + l[i-1]
end

# 最小の回数を計算する
min = n
(1..n).each do |i|
  count = ( l_c[i] - l_c[0] ) + ( r_c[n] - r_c[i-1] ) - 1
  min = count if count < min
end
puts min 