# 標準入力
k = gets.chomp.to_i
a, b = gets.split.map(&:to_i)
# p k,a,b

# 判定
ans = "NG"
m = a % k
(a - m).step(b, step = k).each do |i|
  if a <= i && i <= b then
    ans = "OK"
    break
  end
end

# 解答
puts ans