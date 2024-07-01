n = gets.to_i
p = gets.split.join('').to_i
q = gets.split.join('').to_i
retu = [*(1..n)].permutation(n).to_a
un =[]
retu.each do |a|
  un << a.join('').to_i
end
a = un.index(p) + 1
b = un.index(q) + 1
puts (a - b).abs