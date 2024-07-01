# 昇順とはなにか
# 頭から舐めていって、今の最大値より小さな値が出てこないこと
# 制約: 必ず1, 2, 3, 4, 5のような連続した要素からなっている
# 比較すればよい

n = readline.strip.to_i
ps = readline.strip.split.map(&:to_i)
ar = (1.upto n).to_a
count = ps.zip(ar).select do |a, b|
  a != b
end.size

if count == 0 || count == 2
  puts "YES"
else
  puts "NO"
end
