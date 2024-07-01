# 入力
N = gets.to_i
p = []
q = []
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)

arr = []
N.times do |i|
  arr[i] = i+1
end
# 辞書順で全順列(N!こ)を作成
arr = arr.permutation(N).to_a

x,y = 0
arr.each_with_index do |a, i|
  if a == p
    x = i+1
  end
  if a == q
    y = i + 1
  end
end
puts (x-y).abs