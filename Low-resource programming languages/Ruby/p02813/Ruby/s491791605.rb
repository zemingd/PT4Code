# 入力
n = gets.to_i
pn = gets.split(" ").map &:to_i
qn = gets.split(" ").map &:to_i

numArray = [*1..n].permutation(n).to_a
puts (numArray.index(pn) - numArray.index(qn)).abs