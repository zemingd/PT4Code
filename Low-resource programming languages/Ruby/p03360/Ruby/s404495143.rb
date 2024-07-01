# 黒板に, 3 つの正の整数 A,B,C が書かれています.
# E869120 君は, 以下の操作を K 回行います.
# 黒板に書かれている整数のうち 1 つを選び, これを 2 倍した値に書き換える.
# さて, K 回の操作を終えた後の,
# 黒板に書かれる整数の合計としてありうる最大の値はいくつでしょうか？

input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i
integers = [a, b, c]

k = gets.to_i

index = integers.index(integers.max)

k.times do
  integers[index] *= 2
end

sum = 0
integers.each do |i|
  sum += i
end

puts sum
