# いったん全て正答として合計値を出しておき、
# 条件に合うまで配当の小さい問題の点数分引いていく
# -> って、条件に合うまで、つーか「10で割って0にならない最小の点数」でいいのでそれを取る
n = gets.to_i
k = []
n.times do
  k << gets.to_i
end
k.sort!
sum = k.inject(:+)

if sum%10!=0
  puts sum
else
  if k.all?{|x|x%10==0}
    puts 0
  else
    k = k.select{|x|x%10!=0}
    puts sum - k[0]
  end
end
