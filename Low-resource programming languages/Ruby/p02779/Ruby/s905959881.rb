n = gets.to_i
a = gets.split("\s").map(&:to_i)

p a == a.uniq ? 'YES' : 'NO'