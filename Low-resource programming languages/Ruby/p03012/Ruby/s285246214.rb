# 整数の入力
n = gets.to_i

# スペース区切りの整数の入力
weights = gets.chomp.split(" ").map(&:to_i)

diff = 99999

s1 = weights[0]
s2 = weights.sum - weights[0]

for i in 1..n -1
  s1 += weights[i]
  s2 -= weights[i]
  diff_abs = (s1 - s2).abs
  if diff > diff_abs
    diff = diff_abs
  end
end

# 出力
print("#{diff}\n")
