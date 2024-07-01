# nを取得
n = gets.chomp.to_i
# 社員番号を配列で取得
array = gets.split(' ').map(&:to_i)

# 同じ数字のを数える
i = 1
for cot in 1..n do
  cot = array.count(i)
  i += 1
  puts cot
end
