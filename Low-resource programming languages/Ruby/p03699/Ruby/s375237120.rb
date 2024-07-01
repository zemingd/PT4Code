# いったん全て正答として合計値を出しておき、
# 条件に合うまで配当の小さい問題の点数分引いていく
n = gets.to_i
k = []
n.times do
  k << gets.to_i
end
k.sort!
sum = k.inject(:+)
i = 0
loop do
  if sum == 0 || sum % 10 != 0
    break
  end
  sum-=k[i]
  i += 1
end
puts sum