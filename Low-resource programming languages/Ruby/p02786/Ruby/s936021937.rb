# coding: utf-8
H = gets.to_i

# 1以下になるまでの回数を数える
ans = 0
cnt = 0
ret = H
while ret > 1
  ret /= 2
  cnt += 1
end

# 549755813888
# 1099511627775
# 274877906944
# p cnt

(1..cnt).each do |i|
  _n = 2 ** i
  ans += _n
  # p "i:#{_n} ans:#{ans}"
end

puts ans+1
