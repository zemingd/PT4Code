# 整数の入力
N = gets.to_i
# スペース区切りの整数の入力
d = gets.chop.split.map(&:to_i)
l = d.length

count = 0

for i in 0..N-1 do
  if d[i] != d[i+1]
    count += 1
  end
end

puts count
