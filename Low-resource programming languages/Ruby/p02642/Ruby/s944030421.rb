require "set"
 
n = gets.to_i
a = gets.split.map(&:to_i).sort

m = 10**6
num = a.tally # 重複判定
seen = Set.new

ans = 0
a.each do |i|
  next if seen === i
  ans += 1 if num[i] == 1 # 昇順に見ているので重複してなければカウント

  # iの倍数を記録していく
  i.step(m, i) do |j|
    seen << j
  end
end

puts ans
