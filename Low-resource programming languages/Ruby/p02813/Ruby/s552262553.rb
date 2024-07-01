n = gets.to_i
p = gets.chop.split.map(&:to_i)
q = gets.chop.split.map(&:to_i)

ary = []

for i in 1..n do
  ary.push(i)
end

array = ary.permutation(n).to_a

num1 = 1+array.index(p)
num2 = 1+array.index(q)

ans = num1 - num2
puts ans.abs