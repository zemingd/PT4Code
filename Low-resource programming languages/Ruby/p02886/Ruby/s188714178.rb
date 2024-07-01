# 整数の入力
# N = gets.to_i
N = 7
# スペース区切りの整数の入力
# d = gets.chop.split.map(&:to_i)
d = [5, 0, 7, 8, 3, 3, 2]
l = d.length

point = 0

for i in 0..l-1 do
  for j in i+1..l-1 do
    point += d[i]*d[j]
  end
end

puts point
