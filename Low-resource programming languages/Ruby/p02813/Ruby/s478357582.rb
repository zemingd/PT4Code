n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)
num = [*1..n]
arr =  num.permutation(n).to_a
ans = (arr.index(p)-arr.index(q))
p ans.abs
