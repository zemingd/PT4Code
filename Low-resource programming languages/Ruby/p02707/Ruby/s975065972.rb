# 標準入力を s, w に分解
n = gets.chomp.to_i
a = gets.split.map(&:to_i)
s = [0] + a.map{ |a| 0 }
# p n,a,s

# 部下の人数を集計
a.each do |ae|
  s[ae - 1] += 1
end

# 解答
s.each do |se|
  puts se
end