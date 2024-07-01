inputs = Array.new
while line = $stdin.gets
  inputs << line.chomp
end

N = inputs[0]
As = inputs[1].split(" ").map(&:to_i)

cnt = 0
As.each do |a|
  cnt += 1 if a < 0
end

# 偶数個の場合は全てを>0にできる
# 奇数個の場合は一つの数をのぞいて>0にできる
bs = As.map{|a| a > 0 ? a : - a}

res = bs.reduce(:+)
if cnt % 2 == 1
  # 奇数の場合は最小の数を除く
  res = res - bs.min * 2
end

puts res
