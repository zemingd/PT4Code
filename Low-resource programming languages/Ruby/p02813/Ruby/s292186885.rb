n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)
dic = (1..n).to_a.permutation(n).to_a
pi = dic.index(p)
di = dic.index(q)
puts (di - pi).abs