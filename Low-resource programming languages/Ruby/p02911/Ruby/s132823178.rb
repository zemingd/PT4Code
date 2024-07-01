N, K, Q = gets.split.map(&:to_i)
a = []
correct = []
correct = correct.fill(0,0..N-1)
Q.times do |i|
  a[i] = gets.to_i
  # 正解数を保存しておく
  correct[a[i]-1] += 1
end

# 持ち点 > 問題数 のとき 持ち点が0になることはない
if K > Q
  N.times do
    puts "Yes"
  end
  exit
end

# 間違っていい回数はK-1回
# 正解しないといけないのはQ-(K-1)=Q-K+1回
correct.each do |c|
  if c >= Q-K+1
    puts "Yes"
  else
    puts "No"
  end
end